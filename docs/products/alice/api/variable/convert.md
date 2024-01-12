---
title: Convert
summary: その変数を指定された型に明示的に変換します。変換に失敗した場合はnullを返します。
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

その変数を指定された型に明示的に変換します。変換に失敗した場合は`null`を返します

```cs title="AliceScript"
namespace Alice;
variable Convert(type type);
```

|引数| |
|-|-|
|`type`| 変換先の変数の種類を表す`type`|

|戻り値| |
|-|-|
|`variable`| 変換に成功すればそのインスタンス、それ以外の場合は`null`|

### 例
以下は、`a`を文字列に変換する例です。

```cs title="AliceScript"
var a = 1;
a = a.Convert(string);
print(a.type); // 出力例 : String
```
