---
title: BeginInvoke
long_title : delegate.BeginInvoke
summary: 現在のデリゲートに指定された引数を渡して非同期で実行します
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Delegate.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Delegate.cs)

#### BeginInvoke(params variable)

現在のデリゲートに指定された引数を渡して非同期で実行します。

```cs title="AliceScript"
namespace Alice;
public void BeginInvoke(params variable args);
```

|引数| |
|-|-|
|`args`|指定する引数。これは可変長個指定できます。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
以下は、デリゲートを生成し、それをSayHelloとして定義します。SayHelloが呼び出されたとき、標準出力にHello,World!を書き込みます。

```cs title="AliceScript"
var SayHello = delegate()
 {
   print("Hello,World!");
 }
SayHello.BeginInvoke();//出力例:Hello,World!
```
