# プログラミング用フォント Myrica に Nerd Fonts を組み合わせてインストールするスクリプト
[Myrica （ミリカ）](http://myrica.estable.jp/)は、フリーなプログラミング用 TrueType フォントで、視認性、判別性が高くなるように複数のフォントファイルを元に合成/修正されています。

[Ricty の開発が終了（サポートや Bugfix が終了）](https://forest.watch.impress.co.jp/docs/serial/yajiuma/1478305.html)ということで、Ricty のセキュリティバグは放置されることになりました。
[Homebrew から Ricty をインストールするときにはセキュリティバグは修正されている](https://github.com/sanemat/homebrew-font/pull/52)ということですが、今後同様な問題が出たときには修正されるかどうか分かりません。
そこで、私は開発終了宣言をしていない Myrica を試してみることにしました。
Myrica は Ricty と同じく Insonsolata をベースに日本語フォントを加えたフォントであり、使用感があまり変わらないのではないかと期待して試しているところです。

プログラミング用に[Nerd Fonts](https://www.nerdfonts.com/)を Ricty に合成して使っていたのですが、Myrica に Nerd Fonts を合成する方法が分からなかったので調べてスクリプトにしました。

# 前提
7zip, unzip, wget, fontforge が必要です。

```
$ brew install p7zip unzip wget fontforge
```

# 使い方
以下のコマンドを実行します。

```
$ git clone https://github.com/mkasa/myrica-nerdfonts
$ cd myrica-nerdfonts
$ make install
```

Font Book.app が開きますので Install ボタンをクリックしてください。

