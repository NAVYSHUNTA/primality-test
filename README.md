# primality-test
Haskellで書いた素数判定プログラムです。

## ソースコード
[こちら](https://github.com/NAVYSHUNTA/primality-test/blob/main/src/primality_test.hs)から確認できます。

## 使い方
ここでは、対話モードで実行する方法を紹介します。事前にHaskellのパッケージ管理ツールであるstackをインストールしてください。

対話モードで起動するには以下の通りに入力します。
```console
$ stack ghci
```

<br>また、終了するには`:q`と入力します。
```console
ghci> :q
```

<br>ghciにファイル(プログラム)を読み込むために`:l`を用いて以下のように入力します。
```console
ghci> :l primality_test.hs
```

<br>正常にロードされた場合、以下のようになるはずです。
```console
ghci> :l primality_test.hs
[1 of 1] Compiling Main             ( primality_test.hs, interpreted )
Ok, one module loaded.
```

<br>もし、以下のような表示が出た場合は[primality_test.hs](https://github.com/NAVYSHUNTA/primality-test/blob/main/src/primality_test.hs)がカレントディレクトリに置かれていない可能性があります。
```console
<no location info>: error: can't find file: primality_test.hs
Failed, no modules loaded.
```

<br>無事にロードが完了したら、`main`と入力することで素数判定のプログラムを実行することができます。
```console
ghci> :l primality_test.hs
[1 of 1] Compiling Main             ( primality_test.hs, interpreted )
Ok, one module loaded.
ghci> main
素数判定プログラムへようこそ！
素数判定したい整数を入力してください。
4
4は合成数です。
ghci>
```

## 実行結果例
例えば、`3`を入力すると`素数`、`4`を入力すると`合成数`と判定されます。

![image](https://github.com/NAVYSHUNTA/primality-test/assets/52842964/a505a77f-4f94-45cf-845b-487a276dce56)

<br>しかし、`-1`や`shunta`などを入力すると`2以上の整数値を入力してください。`と出力されます。この場合、素数判定は行われません。

![image](https://github.com/NAVYSHUNTA/primality-test/assets/52842964/49c967ff-d3b0-43ef-8acc-14366fc22456)
