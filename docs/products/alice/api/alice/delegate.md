---
title: delegate
summary: デリゲートを生成します。
date : 2022-02-15
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数の区切りの空白をサポート、言語構造

指定された引数と処理を含むデリゲートを生成します。デリゲートについて詳しく知るには、[基本:デリゲート](../../../general/delegate)を参照してください。

```cs title="AliceScript"
namespace Alice;
delegate delegate(params type args);
```

|引数| |
|-|-|
|`params type args`| デリゲートに与える引数の名前と型（必要な場合）|

|戻り値| |
|-|-|
|`delegate`| 生成されたデリゲート|

### 例
次の例では、Helloのあとに指定された名前を表示するデリゲートを定義し、それを実行します。

```cs title="AliceScript"
var greet = delegate(string name){
    print("Hello,{0}",name);
}

greet("Alice");//出力:Hello,Alice
```