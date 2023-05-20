---
title: ToNativeProperty
summary: 現在の型をネイティブ型を表すオブジェクトに変換します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript2.1

現在の型をネイティブ型を表すオブジェクトに変換します

```cs title="AliceScript"
namespace Alice.Interpreter;
Type ToNativeProperty();
```

|戻り値| |
|-|-|
|`variable`|ネイティブ型を表すオブジェクト|

### 説明
この関数では、文字列型などのネイティブ型を表していればそれを表すオブジェクトを、クラスなどの非ネイティブ型を表していれば`Object`を表す型を返します。

### 例
以下は、文字列型を手動でインスタンス化します。

```cs title="AliceScript"
string.Activate();
```
