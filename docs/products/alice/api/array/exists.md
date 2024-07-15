---
title: Exists
long_title : array.Exists
summary: 現在の配列に、指定された条件と一致する要素が含まれているかを判断します。
date: 2024-07-15
mt_type: method
mt_title: Exists(delegate)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Exists(delegate)

現在の配列に、指定された条件と一致する要素が含まれているかを判断します。

```cs title="AliceScript"
class Alice.Array;
public bool Exists(delegate match);
```

|引数| |
|-|-|
|`match`|検索する条件を定義するデリゲート|

|戻り値| |
|-|-|
|`bool`|指定された条件と一致する要素がひとつ以上含まれている場合は`true`、それ以外の場合は`false`。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明
この関数は、現在の配列に指定された条件と一致する要素が含まれているかを判断します。ひとつでも`match`に一致する要素が見つかったら、処理はそこで停止します。

この関数は配列に対して線形探索を行います。このため、この関数の計算量は$O(n)$です。ここで、$n$は配列の要素数です。

### 例
以下は、ある数値が入ったが配列から3未満の要素が存在するかを調べています。

```cs title="AliceScript"
var a = [1,2,3,4];
print(a.Exists(item => item < 3)); // 出力例 : true
```
