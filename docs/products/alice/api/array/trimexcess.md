---
title: TrimExcess
long_title : array.TrimExcess
summary: 配列にある要素数がしきい値未満の場合に、容量を縮小します
mt_type: method
mt_title: TrimExcess()
mt_summary: 配列にある要素数がしきい値未満の場合に、容量を縮小します
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

#### TrimExcess()

配列にある要素数がしきい値未満の場合に、容量を縮小します

```cs title="AliceScript"
class Alice.Dictionary;
public void TrimExcess();
```

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

### 説明
このメソッドを使用すると、リストに要素が追加されない場合に、メモリ割り当てを最小限に抑えられます。このメソッドの計算量は$O(n)$です。$n$は[Length](./length.md)です。

辞書に割り当てられているメモリできるだけ解放するには、次のようにします。

```cs title="AliceScript"
dict.Clear();
dict.TrimExcess();
```

### 例
以下は、配列の容量を縮小します。

```cs title="AliceScript"
array ary = [1];

ary.TrimExcess();
```
