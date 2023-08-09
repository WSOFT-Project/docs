---
title: Size
long_title : array.Size
summary: 現在の配列にある要素の数を取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の配列にある要素の数を取得します

```cs title="AliceScript"
class Alice.Array;
number Size();
```

|戻り値| |
|-|-|
|`number`| 現在の配列にある要素の数|

### 例
以下は、`abc`の文字数を表示します

```cs title="AliceScript"
var a = "abc";
print(a.Size()); // 出力例 : 3
```
