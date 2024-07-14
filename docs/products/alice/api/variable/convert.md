---
title: Convert
long_title: variable.Convert
summary: その変数を指定された型に明示的に変換します。変換に失敗した場合はnullを返します。
mt_type: method
mt_title: Convert(Type)
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.General.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.General.cs)

#### Convert(Type)

その変数を指定された型に明示的に変換します。変換に失敗した場合は`null`を返します

```cs title="AliceScript"
namespace Alice;
public variable Convert(Type type);
```

|引数| |
|-|-|
|`Type`| 変換先の変数の種類を表す`type`|

|戻り値| |
|-|-|
|`variable`| 変換に成功すればそのインスタンス、それ以外の場合は`null`|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 例
以下は、`a`を文字列に変換する例です。

```cs title="AliceScript"
var a = 1;
a = a.Convert(string);
print(a.type); // 出力例 : String
```
