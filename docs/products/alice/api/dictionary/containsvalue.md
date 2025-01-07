---
title: ContainsValue
long_title : dictionary.ContainsValue
summary: 指定した値が辞書内に存在するかを調べます
mt_type: method
mt_title: ContainsValue(variable)
mt_summary: 指定した値が辞書内に存在するかを調べます
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Dictionary.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Dictionary.cs)

#### ContainsValue(variable)

指定した値が辞書内に存在するかを調べます

```cs title="AliceScript"
class Alice.Dictionary;
public bool ContainsValue(variable key);
```

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

### 説明
このメソッドは、辞書内に指定した値が存在するかを調べます。

このメソッドは線形探索を行います。したがって、平均実行時間は[Length](./length.md)に比例します。つまり、このメソッドの計算量は$O(n)$操作です。このとき$n$は[Length](length.md)の値です。

### 例
以下は、辞書をクリアします。

```cs title="AliceScript"
dictionary dict = { 
    "one": 1,
    "two": 2
};

print(dict.ContainsValue(1)); //出力例: true
```
