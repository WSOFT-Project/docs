---
title: ToString
long_title: variable.ToString
summary: その変数の文字列表現を取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

#### ToString()

その変数の文字列表現を取得します

```cs title="AliceScript"
namespace Alice;
virtual string ToString();
```

|戻り値| |
|-|-|
|`string`| その変数のインスタンスの文字列表現|


### 例
以下は、`variable`型の文字列表現を取得します

```cs title="AliceScript"
print(variable.ToString()); // 出力例 : variable
```
