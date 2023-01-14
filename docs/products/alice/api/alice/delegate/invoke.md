---
title: Invoke
summary: 現在のデリゲートに指定された引数を渡して実行し、その戻り値を返します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在のデリゲートに指定された引数を渡して実行し、その戻り値を返します。

```cs title="AliceScript"
namespace Alice;
variable Invoke(params variable args);
```

|引数| |
|-|-|
|`args`|指定する引数。これは可変長個指定できます。|

|戻り値| |
|-|-|
|`variable`|デリゲートの戻り値。規定値は`null`です。|

### 例
以下は、デリゲートを生成し、それをSayHelloとして定義します。SayHelloが呼び出されたとき、標準出力にHello,World!を書き込みます。

```cs title="AliceScript"
var SayHello = delegate()
 {
   print("Hello,World!");
 }
SayHello.Invoke();//出力例:Hello,World!
```
