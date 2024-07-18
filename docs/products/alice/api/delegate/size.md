---
title: Size
long_title : delegate.Size
summary: 現在のデリゲートに含まれている関数の数を取得します。
mt_type: method
mt_title: Size()
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Bytes.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Bytes.cs)

#### Size()

現在のデリゲートに含まれている関数の数を取得します。

```cs title="AliceScript"
class Alice.Array;
public number Size();
```

|戻り値| |
|-|-|
|`number`| 現在の配列にある要素の数|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
以下は、`abc`の文字数を表示します

```cs title="AliceScript"
var a = "abc";
print(a.Size()); // 出力例 : 3
```