import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

void main(List<String> args) {
  print("write test class...");
  var testClass = Class((b) => b
    ..name = "Test"
    ..annotations.add(refer("JsonSerializable").call([], {"fieldRename": refer("FieldRename.snake")}))
    ..constructors.add(Constructor((b1) => b1
      ..factory = true
      ..lambda = true
      ..name = "fromJson"
      ..body = const Code("_\$testFromJson"))));

  final emitter = DartEmitter();

  var specList = [
    Directive.import("package:json_annotation/json_annotation.dart"),
    Directive.part("test.g.dart"),
    testClass,
  ].map((e) => e.accept(emitter)).join("");

  print(DartFormatter().format(specList));
}
