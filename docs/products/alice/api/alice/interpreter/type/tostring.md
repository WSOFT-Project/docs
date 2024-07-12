---
title: ToString
long_title : type.ToString
summary: 現在の型を説明する文字列表現を取得します
mt_type: method
mt_title: ToString()
---

### 定義
名前空間: Alice.Interpreter<br/>
アセンブリ: Losetta.dll<br/>
ソースコード: [TypeObject.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/Objects/TypeObject.cs)


現在の型を説明する文字列表現を取得します

```cs title="AliceScript"
class Alice.Interpreter.Type;
override string ToString();
```

|戻り値| |
|-|-|
|`string`| 現在の型を説明する文字列表現|

???note "対応: Alice2.1以降"
    |対応||
    |---|---|
    |AliceScript|2.1、2.2、2.3、3.0|
    |AliceSister|2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
以下は、`variable`型の文字列表現を取得します

```cs title="AliceScript"
print(variable.ToString()); // 出力例 : variable
```
