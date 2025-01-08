---
title: Chunk
long_title: string.Chunk
summary: 現在の文字列を指定した文字数ごとに分割した配列を取得します。
date : 2024-08-03
mt_type: method
mt_title: Chunk(number)
mt_summary: 現在の文字列を指定した文字数ごとに分割した配列を取得します。

---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)



#### Chunk(number)

現在の文字列を指定した文字数ごとに分割した配列を取得します。

```cs title="AliceScript"
class Alice.Array;
array Chunk(number size);
```

|引数| |
|-|-|
|`size`|分割した文字列の最大長さ|

|戻り値| |
|-|-|
|`array`|チャンクごとに分割された文字列を格納する配列|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

### 説明
このメソッドは、現在の文字列を指定した文字数ごとに分割した配列を作成し、取得します。

作成されたチャンク文字列の長さは、配列の最後の文字列以外`size`になります。

### 例
次の例では、DNA遺伝暗号を表す文字列を3文字ずつで構成されたコドンを表す文字列に分割して取得しています。

```cs title="AliceScript"
string dnaFlag = "ATTCGCGGCCGCCAA"

string codons = dnaFlag.Chunk(3)

print(codons) 
// 出力: [ATT, CGC, GGC, CGC, CAA]
```
