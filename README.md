# 天気情報取得ツール（日本限定）

Dart言語練習のために作成した天気情報を取得するためのCLIツール

# 開発環境

Dart v2.16.2

```sh
$ dart --version
Dart SDK version: 2.17.1 (stable) (Tue May 17 17:58:21 2022 +0000) on "macos_arm64"
```

# 技術情報

## アーキテクチャ

**オニオンアーキテクチャ** を採用し、それに基づいて実装を進めていく。  
→ 勉強しながらのため、多少間違っていたり、中途半端になっていたりするかも...

## 依存ライブラリ

[pubspec.yaml](./pubspec.yaml) を参照

## 利用API

- [OpenWeatherMap](https://openweathermap.org/)
  - 天気情報の取得に使用
- [HeartRails Geo API](http://geoapi.heartrails.com/)
  - 地名→軽度・緯度取得に使用

# ライセンス

See [LICENSE](./LICENSE)

# 参考

- [ドメイン駆動＋オニオンアーキテクチャ概略[DDD]](https://little-hands.hatenablog.com/entry/2017/10/11/075634)
