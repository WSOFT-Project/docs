---
title: BeginInvoke
long_title : delegate.BeginInvoke
summary: 現在のデリゲートに指定された引数を渡して非同期で実行します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在のデリゲートに指定された引数を渡して非同期で実行します。

```cs title="AliceScript"
namespace Alice;
void BeginInvoke(params variable args);
```

|引数| |
|-|-|
|`args`|指定する引数。これは可変長個指定できます。|

### 例
以下は、デリゲートを生成し、それをSayHelloとして定義します。SayHelloが呼び出されたとき、標準出力にHello,World!を書き込みます。

```cs title="AliceScript"
var SayHello = delegate()
 {
   print("Hello,World!");
 }
SayHello.BeginInvoke();//出力例:Hello,World!
```
