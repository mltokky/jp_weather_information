# 天気情報取得ツール（日本限定）

Dart言語練習のために作成した天気情報を取得するためのCLIツール

## 開発環境

```sh
$ dart --version
Dart SDK version: 2.17.1 (stable) (Tue May 17 17:58:21 2022 +0000) on "macos_arm64"
```

## 使い方

```sh
$ dart run ./lib/main.dart
```

都道府県 → 市区町村 → それ以下のエリア の順に選択を促されるので、数字を入力して選択すしていく。  
→ 最後に選択したエリアの天気が表示される

### ランダム表示

`--random` を付与して実行すると、全国から無作為に地点を選び、その天気を表示する。

```sh
$ dart run ./lib/main.dart --random
```

### 郵便番号で検索

オプション `--postal` に続き、郵便番号を入力して実行すると、その地点の天気を表示する。  
→ ハイフンはあってもなくてもどちらでもOK

```sh
$ dart run ./lib/main.dart --postal 123-4567
```

## 技術情報

### アーキテクチャ

**オニオンアーキテクチャ** を採用し、それに基づいて実装を進めていく。  
→ 勉強しながらのため、多少間違っていたり、中途半端になっていたりするかも...

### 依存ライブラリ

[pubspec.yaml](./pubspec.yaml) を参照

### 利用API

- [OpenWeatherMap](https://openweathermap.org/)
  - 天気情報の取得に使用
- [HeartRails Geo API](http://geoapi.heartrails.com/)
  - 地名→軽度・緯度取得に使用

## ライセンス

See [LICENSE](./LICENSE)

## 参考

- [ドメイン駆動＋オニオンアーキテクチャ概略[DDD]](https://little-hands.hatenablog.com/entry/2017/10/11/075634)
