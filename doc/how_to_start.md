# つみあげったープロジェクトの始め方

## 本資料の内容

Geminiアプリを始めるに当たり、初めてアプリを実行する際の方法について記載します。

## 始め方

### ローカルへのクローン

#### コマンドでクローンする場合

Geminiアプリフォルダを管理したいディレクトリにターミナルで移動し、

```
# HTTPS接続の場合
git clone https://github.com/project-gemini-by-fluttter-univ/gemini-app.git
# SSH接続の場合
git clone git@github.com:project-gemini-by-fluttter-univ/gemini-app.git
```
を実行してください。

### FVM の導入

作業者のFlutterのバージョンを揃えるために、  
Flutterバージョン管理システム(FVM(Flutter Version Management))を 
導入しています。
以下を読んで設定をお願いします。

#### Mac の方

[こちらの記事](https://zenn.dev/altiveinc/articles/flutter-version-management-3)を参考に、
FVMのインストール、パスの設定をしてください。

### FVMの適用

Geminiアプリのルートディレクトリに移動し、

```
fvm install
```

を実行してください。

IDEでVScodeを使われている方は以上で設定完了です。

Android Studio を使われている方は、
``Preferences > Language & Frameworks > Flutter`` の ``SDK``内 ``Flutter SDK path``に以下のパスを入力します。
``/{プロジェクトまでのパス}/.fvm/flutter_sdk``


### テスト実行

エミュレータ（Android Emulator推奨）にてアプリを実行してみてください。

無事実行されれば初期設定は完了です。
