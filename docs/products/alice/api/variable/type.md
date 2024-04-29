---
title: Type
long_title: variable.Type
summary: その変数の種類を表すオブジェクトを取得します。
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

その変数の種類を表す[Type](../alice/interpreter/type/index.md)型のインスタンスを取得します

```cs title="AliceScript"
namespace Alice;
public Type Type { get; }
```
### 値
|値| |
|-|-|
|`Type`|変数の種類を表す[Type](../alice/interpreter/type/index.md)型のインスタンス|


### 例
以下は、`a`が`number`型であるかどうかを検証します。

```cs title="AliceScript"
var a = 1;
print(a.type == number); // 出力例 : true
```
