---
title : 名前空間
summary : この記事では、AliceScriptでの名前空間について説明します。
date : 2024-04-23
---

==**名前空間**(namespace)== とは、関数や変数などのメンバーを種類ごとに分けて管理する仕組みです。

名前空間は、ファイルをディレクトリを使って整理することに例えられます。

プログラムを作成する場合でも、プログラムの規模が大きくなってきて、関数や変数の数が多くなると、それらのメンバーを関連性のあるもの同士でまとめて管理するような仕組みが必要になります。このように、メンバーを階層的に分類するための仕組みが名前空間です。

次の例では、名前空間を使って変数や関数を分類しています。

```cs title="AliceScript"
namespace MyNameSpace
{
    public string Text = "";
    public void Func()
    {

    }
}
```

上記の例のように定義した名前空間は、以下のように名前空間の名前+ピリオド+メンバーの名前の形式で呼び出します。

```cs title="AliceScript"
MyNameSpace.Text = "ABC";

MyNameSpace.Func();
```

よく使用する名前空間は、`using`を使って名前空間の名前を指定することなくアクセスできます。次の例をご覧ください。

```cs
using MyNameSpace;

print(Text);
```

### アクセス制御
名前空間に定義された変数や関数は、**アクセス制御**機能を使ってそれをどこから参照できるかを指定できます。アクセスは、変数や関数の宣言時にアクセシビリティ修飾子として指定します。アクセシビリティ修飾子を指定しない場合、自動的に`private`が使用されます。それぞれの修飾子と対応するアクセス可能範囲を以下に示します。

修飾子|アクセスできる範囲
-----|---------------
`private`|同じスコープの中(規定値)
`protected`|同じ名前空間の中
`public`|どこからでも

次に、これをよりわかりやすくするため、以下に使用例を示します。

```cs title="AliceScript-lib1.ice"
//ライブラリ側のコード1
namespace MyLibrary
{
    private void PrivateFunc()
    {
        print("This is private!");
    }

    protected void ProtectedFunc()
    {
        print("This is protected!");
    }

    public void PublicFunc()
    {
        print("This is public!");
    }

    PrivateFunc();//成功
    ProtectedFunc();//成功
    PublicFunc();//成功
}
```

```cs title="AliceScript-lib2.ice"
//ライブラリ側のコード2
namespace MyLibrary
{
    PrivateFunc();//失敗
    ProtectedFunc();//成功
    PublicFunc();//成功
}
```

```cs title="AliceScript-main.ice"
//ライブラリの使用者側のコード
include("lib1.ice");
include("lib2.ice");

using MyLibrary;

PrivateFunc();//失敗
ProtectedFunc();//失敗
PublicFunc();//成功
```

ご覧のように、`public`を指定した関数はライブラリの内外どこからでもアクセスできます。一方、`protected`は同じ名前空間を使用するライブラリの中で、`private`は同じファイルの同じスコープの中からのみアクセスできます。

この機能は、ライブラリの使用者にアクセスさせる範囲を制御することを意図して設計しました。ライブラリの開発者は、使用者に提供する関数や変数などを`public`として公開する一方、使用者が直接使用しない内部変数や関数などを`protected`や`private`として隠蔽できます。

重要なポイントは、名前空間内で定義したあらゆる変数や関数が外部に公開されるのではなく、後悔したい変数や関数は名前空間内で宣言時に`public`をつける必要があることです。