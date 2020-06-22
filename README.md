# Overview

Denoを使用したReactのDocker開発環境

[deno-react-minimal-example](https://github.com/Naturalclar/deno-react-minimal-example)を参考にしたが、自分の環境では動作しなかったので
下記の事項を修正した。

1. [serverのインポート元を@0.19から@0.58へ変更](https://deno.land/std@0.58.0/http/server.ts)
   1. インポートの元のURLが存在しないものになっていたので、最新版に修正
2. Denoのバージョンを更新。
   1. 元のイメージのバージョンが古かったので、DockerFileを弄り、CLIでインストールするように修正
3. 型情報のインポート
   1. App.tsxでReactの型情報をインポートするように記載した

## 起動方法

```Bash
    deno run --allow-net ./server.tsx
```

## 残課題

1. Docker起動時にDockerFile内に記載したCMDの内容が実行されると思っていたがされない
2. DenoでReactをビルドする手順が不明
3. インポートしたライブラリがVSCode上でエラー扱い(コンパイルは通る)

## 参考資料

- [deno-react-minimal-example](https://github.com/Naturalclar/deno-react-minimal-example)
  - 主に参考にさせて頂いたコード

- [deno-sample](https://github.com/yasu-s/deno-sample/tree/master)
  - denoをCLIからインストールする方法の参考にした

- [v0.35.0 TSX file can't be compiled](https://github.com/denoland/deno/issues/4197)
  - 発生したエラー内容であるTS7026の解決に役立った
