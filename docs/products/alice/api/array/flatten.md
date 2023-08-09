---
title: Flatten
long_title : array.Flatten
summary: 現在の配列内にある配列型の要素を、現在の配列が存在する場所に置き換え、配列を平坦化します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の配列内にある配列型の要素を、現在の配列が存在する場所に置き換え、配列を平坦化します

```cs title="AliceScript"
class Alice.Array;
void Flatten();
```

### 例
以下は、`[1,2],3`と並ぶ配列を平坦化します。

```cs title="AliceScript"
var a = [[1,2],3];
a.Flatten();
print(a); // 出力例 : [1,2,3]
```
