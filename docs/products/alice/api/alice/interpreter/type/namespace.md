---
title: Namespace
long_title : type.Namespace
summary: 現在の型が所属する名前空間名を取得します
mt_type: property
---

### 定義
名前空間: Alice.Interpreter<br/>
アセンブリ: Losetta.dll<br/>
ソースコード: [TypeObject.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/Objects/TypeObject.cs)


現在の型が所属する名前空間名を取得します

```cs title="AliceScript"
class Alice.Interpreter.Type;
readonly string Namespace;
```

???note "対応: Alice2.1以降"
    |対応||
    |---|---|
    |AliceScript|2.1、2.2、2.3、3.0|
    |AliceSister|2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
以下は、[String](../../../string/index.md)型の所属する名前空間を取得します。

```cs title="AliceScript"
print(string.Namespace); // 出力例 : 
```
