---
title: 基本的なAliceScriptライブラリの開発
summary: このチュートリアルでは、簡単なAliceScriptライブラリを作成することで.NETライブラリがどのようにAliceScriptで動作するかを学習します。
---
<span class="badge bg-success">対応バージョン>=Alice3.0</span>

### はじめに
Visual Studio等で、クラスライブラリプロジェクトを作成してください。

次の表を参照して、ターゲットとなるAliceScriptの実装とライブラリのバージョンを合わせてください。

|AliceScriptの実装|.NETバージョン|
|---|---|
|AliceScript|.NET Core3.1|
|AliceSister|.NetFramework 4.5|
|Losetta|.NET6.0|

!!!warning "適用対象"
    AliceScript2.3以前のバージョンに対応したライブラリを開発したい場合は、[FunctionBaseを使用したAliceScriptライブラリの開発](./functionbase-basic.md)を参照してください。

### ライブラリエントリポイントの作成
AliceScriptによってライブラリが、.NET相互運用ライブラリであると認識されるためには、`public`かつ`AliceScript.Interop.ILibrary`が実装されている事が必要です。

初めに、それぞれの実装に応じたライブラリを参照する必要があります。たとえば、AliceScriptで実装しているなら`AliceScript.dll`の参照が必要です。

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
            Alice.RegisterFunctions<MyLibrary>();
        }
    }
}
```

### 関数の定義
関数バインドというテクノロジーを使用し、現在の`MyLibrary`クラスに静的メソッドを実装することで、AliceScriptで使用できる関数を定義できます。

ここでは、名前を渡すと「Hello,名前」という文字列が返却される関数を作成しましょう。関数の名前は`Greet`にします。（もちろん、異なる名前でも構いません。）

`MyLibrary`クラスに次のように追記します。

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
            Alice.RegisterFunctions<MyLibrary>();
        }

        // ここから追記
        public static string Greet(string yourName)
        {
            return "Hello," + yourName;
        }
    }
}
```

- 関数が定義されているクラス名は、そのまま名前空間の名前になります。
- AliceScriptに公開するメソッドは、静的メソッドかつ`public`である必要があります。
- メソッド名は、そのまま関数の名前になります。
- メソッドの引数や戻り値に使用できる型については、[マーシャリング](./marshaling.md)を参照してください。

### 完成
これでライブラリは完成です。実際に使ってみましょう。

!!! note
    ここでは、`alice`コマンドが使用可能な状態である前提で進みます。そうでない方は、`alice.exe`が導入されている場所にパスを通してください。

プロジェクトをビルドして、出力先のディレクトリでターミナルを開きます。
ターミナルで対話実行モードでaliceを起動します。具体的には、`alice`コマンドを実行します。

初めに、次のように入力してビルドされたライブラリを読み込みます。（ファイル名は適時読み替えてください。）

```cs title="AliceScript"
import("MyLibrary.dll");
```

次に、名前空間を読み込みます。

```cs title="AliceScript"
using MyLibrary;
```

さて、最期に先ほど作成した関数を呼び出してみましょう。

```cs title="AliceScript"
greet("Alice");//出力例:Hello,Alice
```

これでチュートリアルは完了です。
