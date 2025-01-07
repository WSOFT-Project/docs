---
title: Invoke
long_title : delegate.Invoke
summary: 現在のデリゲートに指定された引数を渡して実行し、その戻り値を返します
mt_type: method
mt_title: Invoke(params variable)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Delegate.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Delegate.cs)

#### Invoke(params variable)

現在のデリゲートに指定された引数を渡して実行し、その戻り値を返します。

```cs title="AliceScript"
namespace Alice;
public variable Invoke(params variable args);
```

|引数| |
|-|-|
|`args`|指定する引数。これは複数個指定できます。|

|戻り値| |
|-|-|
|`variable`|デリゲートの戻り値。既定値は`null`です。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 例
以下は、デリゲートを生成し、それをSayHelloとして定義します。SayHelloが呼び出されたとき、標準出力にHello,World!を書き込みます。

```cs title="AliceScript"
var SayHello = delegate()
 {
   print("Hello,World!");
 }
SayHello.Invoke();//出力例:Hello,World!
```
