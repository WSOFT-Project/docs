---
title: Type
long_title : Type クラス
summary: Typeクラスは、変数の型を表します
---

### 定義
名前空間: Alice.Interpreter<br/>
アセンブリ: Losetta.dll<br/>
ソースコード: [TypeObject.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta/Objects/TypeObject.cs)

Typeクラスは、変数の型を表します

```cs title="AliceScript"
namespace Alice.Interpreter;
public class Type;
```

???note "対応: Alice2.1以降"
    |対応||
    |---|---|
    |AliceScript|2.1、2.2、2.3、3.0|
    |AliceSister|2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
このクラスは、AliceScriptで変数の型を表現する際に使用します。AliceScriptでは、以前は`type`型の値が使用されていましたが、AliceScript2.1から`type`クラスが使用されるようになりました。

### プロパティ
|名前|説明|
|---|---|
|[Base](./base.md)|現在の型の継承元のクラス名を取得します|
|[IsObject](./isobject.md)|現在の型がオブジェクトであるかどうかを表す値を取得します|
|[Namespace](./namespace.md)|現在の型が所属する名前空間を取得します|

### メソッド
|名前|説明|
|---|---|
|[Activate(params variable arg)](./activate.md)|指定した引数を使用して、現在の型をインスタンス化します|
|[ToNativeProperty()](./tonativeproperty.md)|現在の型をネイティブ型を表すオブジェクトに変換します|
|[ToString()](./tostring.md)|現在の型を説明する文字列表現を取得します|