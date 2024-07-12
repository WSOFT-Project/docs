---
title: IsObject
long_title : type.IsObject
summary: 現在の型がオブジェクトであるかどうかを表す値を取得します
mt_type: property
---

### 定義
名前空間: Alice.Interpreter<br/>
アセンブリ: Losetta.dll<br/>
ソースコード: [TypeObject.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/Objects/TypeObject.cs)


現在の型がオブジェクトであるかどうかを表す値を取得します

```cs title="AliceScript"
class Alice.Interpreter.Type;
readonly bool IsObject;
```

???note "対応: Alice2.1以降"
    |対応||
    |---|---|
    |AliceScript|2.1、2.2、2.3、3.0|
    |AliceSister|2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
以下は、[String](../../../string/index.md)型がオブジェクトでないことを確認します

```cs title="AliceScript"
print(string.IsObject); // 出力例 : false
```
