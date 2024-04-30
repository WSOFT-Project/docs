---
title: Base
long_title : type.Base
summary: 現在の型の継承元のクラス名を取得します
---

### 定義
名前空間: Alice.Interpreter<br/>
アセンブリ: Losetta.dll<br/>
ソースコード: [TypeObject.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/Objects/TypeObject.cs)

現在の型の継承元のクラス名を取得します

```cs title="AliceScript"
class Alice.Interpreter.Type;
readonly string Base;
```

### 例
以下は、[String](../../../string/index.md)型がオブジェクトでないことを確認します

???note "対応: Alice2.1以降"
    |対応||
    |---|---|
    |AliceScript|2.1、2.2、2.3、3.0|
    |AliceSister|2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

```cs title="AliceScript"
print(string.IsObject); // 出力例 : false
```
