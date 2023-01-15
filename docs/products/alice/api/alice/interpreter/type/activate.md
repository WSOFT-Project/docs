---
title: Activate
summary: 指定した引数を使用して、現在の型をインスタンス化します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript2.1

指定した引数を使用して、現在の型をインスタンス化します

```cs title="AliceScript"
namespace Alice.Interpreter;
variable Activate(params variable arg);
```

|引数| |
|-|-|
|`arg`|インスタンス化する際に使用する引数|

|戻り値| |
|-|-|
|`variable`|インスタンス化したオブジェクト|

### 例
以下は、文字列型を手動でインスタンス化します。

```cs title="AliceScript"
string.Activate();
```
