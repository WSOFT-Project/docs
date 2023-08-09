---
title: ToString
long_title : type.ToString
summary: 現在の型を説明する文字列表現を取得します
---
### 定義
名前空間:Alice.Interpreter / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の型を説明する文字列表現を取得します

```cs title="AliceScript"
class Alice.Interpreter.Type;
override string ToString();
```

|戻り値| |
|-|-|
|`string`| 現在の型を説明する文字列表現|


### 例
以下は、`variable`型の文字列表現を取得します

```cs title="AliceScript"
print(variable.ToString()); // 出力例 : variable
```
