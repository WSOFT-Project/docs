---
title: Length
long_title : array.Length
summary: 現在の配列にある要素の数を表します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の配列にある要素の数を表します

```cs title="AliceScript"
class Alice.Array;
readonly number Length;
```

### 説明
この値の参照にかかる時間は、$O(1)$です。

### 例
以下は、`abc`の文字数を表示します

```cs title="AliceScript"
var a = "abc";
print(a.length); // 出力例 : 3
```
