---
title: Reverse
long_title : array.Reverse
summary: 現在の配列の要素の順序を反転させます
mt_type: method
mt_title: Reverse()
mt_summary: 現在の配列の要素の順序を反転させます
mt_title: Reverse(number,number)
mt_summary: 現在の配列内の指定した範囲の要素の順序を反転させます
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Reverse()

現在の配列の要素の順序を反転させます

```cs title="AliceScript"
class Alice.Array;
public void Reverse();
```

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0|
    |AliceSister|2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.9、0.10|

#### Reverse(number,number)

現在の配列内の指定した範囲の要素の順序を反転させます

```cs title="AliceScript"
class Alice.Array;
public void Reverse(number index,number count);
```

|引数| |
|-|-|
|`index`|反転を開始するインデックス|
|`count`|反転を実行する要素の数|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0|
    |AliceSister|2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 例
以下は、`1`、`2`、`3`と並ぶ配列をの順序を反転させます。

```cs title="AliceScript"
var a = [1,2,3];
a.Reverse();
print(a); // 出力例 : [3,2,1]
```
