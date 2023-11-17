---
title: FunctionBaseを使用したAliceScriptライブラリの開発
summary: このチュートリアルでは、FunctionBaseを使用して簡単なAliceScriptライブラリを作成することで.NETライブラリがどのようにAliceScriptで動作するかを学習します。
---

### はじめに
Visual Studio等で、クラスライブラリプロジェクトを作成してください。

次の表を参照して、ターゲットとなるAliceScriptの実装とライブラリのバージョンを合わせてください。

|AliceScriptの実装|.NETバージョン|
|---|---|
|AliceScript|.NET Core3.1|
|AliceSister|.NetFramework 4.5|
|Losetta|.NET6.0|

### ライブラリエントリポイントの作成
AliceScriptによってライブラリが、.NET相互運用ライブラリであると認識されるためには、`public`かつ`AliceScript.Interop.ILibrary`が実装されている事が必要です。

初めに、それぞれの実装に応じたライブラリを参照する必要があります。たとえば、AliceScriptで実装しているならAliceScript.dllの参照が必要です。

プロジェクトに、次のクラスを追加します。

```csharp title="MyLibrary.cs"
using AliceScript;
using AliceScript.Interop;

namespace MyLibrary
{
    public class MyLibrary :  ILibrary
    {
        public string Name => "MyLibrary";

        public void Main()
        {
            //ライブラリエントリポイント
        }
    }
}

```

### 関数の定義
AliceScriptの関数は.NET側から見るとすべて`AliceScript.FunctionBase`を継承したクラスに見えます。

ここでは、名前を渡すと「Hello,名前」という文字列が返却される関数を作成しましょう。関数の名前は`greet`ということにします。（もちろん、異なる名前でも構いません。）

初めに関数のクラスを定義します。

```csharp title="MyLibrary.cs"
using AliceScript;

namespace MyLibrary
{
    public class GreetFunction : FunctionBase
    {
        public GreetFunction()
        {
            this.Name = "greet";
            this.MinimumArgCounts = 1;
            this.Run += GreetFunction_Run;
        }

        private void GreetFunction_Run(object sender, FunctionBaseEventArgs e)
        {
            string greet = "Hello," + e.Args[0].ToString();
            e.Return = new Variable(greet);
        }
    }
}

```

初めに注目するのは`GreetFunction()`の部分です。ここでは、その関数を定義するために必要な情報を自クラスに指定します。

`Name`は、関数の名前です。ここで代入した文字列がそのまま関数の呼び出しに使用されます。ただし、大文字と小文字は区別しません。

`MinimumArgCounts`は、その関数が最低限必要とする引数の個数です。何も指定しなければ0個となります。

`Run`は、この関数がスクリプトによって呼び出されたときのイベントです。このイベントを購読することで関数は働きます。

`e.Args`は関数に渡された引数を表す`Variable`型の配列です。ここで配列が0個の時の例外処理が不要なのは、`MinimumArgCounts`で`1`以上の数を指定しているからです。

`greet`で返却する文字列を作成しましたが、このままでは返却することはできません。AliceScriptの世界ではすべての変数は`Variable`クラスの中の要素として存在しています。ここでは、`new Variable(文字列)`とすることで`string`型の`Variable`を生成します。

返却する変数ができたら、`e.Return`に代入し終えることで、ブロックを抜けた後に関数の戻り値として返されます。

### 名前空間の登録
名前空間は、関数やクラスをまとめておく、いわば箱のようなものです。
これに登録することによって、AliceScriptから`import "MyLibrary"`と実行するだけであなたの作った関数が使用可能な状態になります。

```csharp title="MyLibrary.cs"
public void Main()
{
    NameSpace mylib = new NameSpace("MyLibrary");

    mylib.Add(new GreetFunction());

    NameSpaceManerger.Add(mylib);
}
```

`NameSpace`クラスを初期化する際に渡した文字列は、そのまま名前空間の名前になります。

`NameSpace.Add()`とすることでその名前空間に関数やクラスを追加します。

最期に、`NameSpaceManerger.Add(mylib);`とすることで名前空間が登録され、いつでも`import`可能な状態になります。

### 完成
これでライブラリは完成です。実際に使ってみましょう。

!!! note
    ここでは、`alice`コマンドが使用可能な状態である前提で進みます。そうでない方は、`alice.exe`が導入されている場所にパスを通してください。

プロジェクトをビルドして、出力先のディレクトリでターミナルを開きます。
ターミナルで対話実行モードでaliceを起動します。具体的には、`alice`コマンドを実行します。

初めに、次のように入力してビルドされたライブラリを読み込みます。（ファイル名は適時読み替えてください。）

```js title="AliceScript"
import("MyLibrary.dll");
```

次に、名前空間を読み込みます。

```js title="AliceScript"
using MyLibrary;
```

さて、最期に先ほど作成した関数を呼び出してみましょう。

```js title="AliceScript"
greet("Alice");//出力例:Hello,Alice
```

これでチュートリアルは完了です。
