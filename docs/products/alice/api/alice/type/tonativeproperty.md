---
title: ToNativeProperty
long_title : type.ToNativeProperty
summary: 現在の型をネイティブ型を表すオブジェクトに変換します
mt_property: method
mt_title: ToNativeProperty()
---

### 定義
名前空間: Alice.Interpreter<br/>
アセンブリ: Losetta.dll<br/>
ソースコード: [TypeObject.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/Objects/TypeObject.cs)


現在の型をネイティブ型を表すオブジェクトに変換します

```cs title="AliceScript"
class Alice.Interpreter.Type;
Type ToNativeProperty();
```

|戻り値| |
|-|-|
|`variable`|ネイティブ型を表すオブジェクト|

???note "対応: Alice2.1以降"
    |対応||
    |---|---|
    |AliceScript|2.1、2.2、2.3、3.0|
    |AliceSister|2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
この関数では、文字列型などのネイティブ型を表していればそれを表すオブジェクトを、クラスなどの非ネイティブ型を表していれば`Object`を表す型を返します。

### 例
以下は、文字列型を手動でインスタンス化します。

```cs title="AliceScript"
string.Activate();
```
