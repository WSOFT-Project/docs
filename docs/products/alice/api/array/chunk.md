---
title: Chunk
long_title: array.Chunk
summary: 現在の配列を指定した要素数ごとに分割した新しい配列を取得します。
date : 2024-08-03
mt_type: method
mt_title: Chunk(number)
mt_summary: 現在の配列を指定した要素数ごとに分割した新しい配列を取得します。

---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)



#### Chunk(number)

現在の配列を指定した要素数ごとに分割した新しい配列を取得します。

```cs title="AliceScript"
namespace Alice;
array Chunk(number size);
```

|引数| |
|-|-|
|`size`|分割した配列の最大長さ|

|戻り値| |
|-|-|
|`array`|チャンクごとに分割された配列を格納する配列|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

### 説明
このメソッドは、現在の配列を指定した要素ごとに分割した配列を作成し、取得します。

作成されたチャンク配列の長さは、配列の最後の配列以外`size`になります。

### 例
次の例では、配列を3要素ずつに分割して表示しています。

```cs title="AliceScript"
array ary = [1, 2, 3, 4, 5, 6, 7, 8];

array chunks = ary.Chunk(3);

print(chunks) 
// 出力: [[1, 2, 3], [4, 5, 6], [7, 8]]
```

