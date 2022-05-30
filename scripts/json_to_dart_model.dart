import 'dart:convert';
import 'dart:io';

import 'package:code_builder/code_builder.dart';

const KEY_INPUT_FILE = "-i";
const KEY_OUTPUT_FILE = "-o";
const KEY_ROOT_CLASS = "-c";
const ALL_OPTIONS = "ioc";

void main(List<String> args) async {
  String? jsonData;
  File? outputPath;
  String? rootClassName;

  for (int i = 0; i < args.length; i++) {
    var argument = args[0];
    switch (argument) {
      case KEY_INPUT_FILE: // ファイルからJSONデータを読み込み
        var inputFile = File(argument[++i]);
        if (!inputFile.existsSync()) {
          stderr.writeln("not found input file: ${inputFile.path}");
          exit(1);
        }

        jsonData = inputFile.readAsStringSync();
        break;
      case KEY_OUTPUT_FILE: // ファイル出力先
        i++;
        if (i >= args.length - 1) {
          // ファイル出力未指定
          stderr.writeln("not specify output file path");
          exit(1);
        }

        outputPath = File(args[i]);
        break;
      case KEY_ROOT_CLASS: // クラス名
        rootClassName = args[++i];
        break;
      default: // フラグ未指定だが値がある → 引数に直接JSON文字列が指定されている
        jsonData = argument;
    }
  }

  if (outputPath == null) {
    stderr.writeln("not specify output file path");
    _printUsage();
    exit(1);
  } else if (rootClassName == null) {
    stderr.writeln("not specify root class name");
    _printUsage();
    exit(1);
  }

  if (jsonData == null) {
    // JSONデータをパイプライン経由で標準入力から取得する
    jsonData = await stdin.transform(utf8.decoder).join("\n");
  }

  // JSON文字列の解析
  Map<String, dynamic> jsonMapData = jsonDecode(jsonData);

  final rootClass = Class((b) {
    b.name = rootClassName;
    b.annotations.add(refer("JsonSerializable").call([], {"fieldRename": refer("FieldRename.snake"), "explicitToJson": refer("true")}));
  });
}

void _printUsage() {
  stderr.writeln("Usage: json_to_dart_model [-$ALL_OPTIONS] [<json_data>]");
  stderr.writeln("\tjson_data");
  stderr.writeln("\t\tJSON string data");
  for (int i = 0; i < ALL_OPTIONS.length; i++) {
    var option = "-${ALL_OPTIONS[i]}";
    stderr.writeln("\t$option");
    switch (option) {
      case KEY_INPUT_FILE:
        stderr.writeln("\t\tinput json file path");
        break;
      case KEY_OUTPUT_FILE:
        stderr.writeln("\t\toutput dart file path");
        break;
      default:
        stderr.writeln("\t\troot model class name");
    }
  }
}

Class createClass(String rootClassName, String keyName, Map<String, dynamic> jsonData) => Class((b) {
      b.name = "$rootClassName${keyName[0].toUpperCase() + keyName.substring(1)}";
      b.annotations.add(refer("JsonSerializable").call([], {"fieldRename": refer("FieldRename.snake"), "explicitToJson": refer("true")}));

      for (var entry in jsonData.entries) {
        b.fields.add(Field((b) {
          b.name = entry.key;
          b.type = refer(entry.value.runtimeType.toString());
          if (entry.value.runtimeType == List) {}
        }));
      }
    });
