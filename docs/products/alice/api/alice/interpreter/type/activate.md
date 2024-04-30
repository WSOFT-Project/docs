---
title: Activate
long_title : type.Activate
summary: 指定した引数を使用して、現在の型をインスタンス化します
---
### 定義
名前空間: Alice.Interpreter<br/>
アセンブリ: Losetta.dll<br/>
実装: [TypeObject.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/Objects/TypeObject.cs)

指定した引数を使用して、現在の型をインスタンス化します

```cs title="AliceScript"
class Alice.Interpreter.Type;
variable Activate(params variable arg);
```

|引数| |
|-|-|
|`arg`|インスタンス化する際に使用する引数|

|戻り値| |
|-|-|
|`variable`|インスタンス化したオブジェクト|

???note "対応: Alice2.1以降"
    |対応||
    |---|---|
    |AliceScript|2.1、2.2、2.3、3.0|
    |AliceSister|2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
以下は、文字列型を手動でインスタンス化します。

```cs title="AliceScript"
string.Activate();
```
