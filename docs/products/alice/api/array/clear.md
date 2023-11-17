---
title: Clear
long_title : array.Clear
summary: 現在の配列からすべての要素を削除します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の配列からすべての要素を削除します

```cs title="AliceScript"
class Alice.Array;
void Clear();
```

### 例
次の例では、配列内の要素をすべて削除しています。

```cs title="AliceScript"
var ary = [0,1,2];

ary.Clear();

print(ary.Length);// 出力:0
```
