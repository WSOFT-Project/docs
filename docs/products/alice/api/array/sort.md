---
title: Sort
long_title : array.Sort
summary: 現在の配列を規定の方法で並び替えます
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### Sort()

現在の配列を規定の方法で並び替えます

```cs title="AliceScript"
class Alice.Array;
public void Sort();
```

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0|
    |AliceSister|2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 例
以下は、`3`、`2`、`1`と並ぶ配列を昇順にソートします。

```cs title="AliceScript"
var a = [3,2,1];
a.Sort();
print(a); // 出力例 : [3,2,1]
```
