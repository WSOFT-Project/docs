---
title: ToString
long_title : bytes.ToString
summary: 指定した文字コードでエンコードした現在のバイナリデータの文字列表現を取得します
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Bytes.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Bytes.cs)

#### ToString(string)

指定した文字コード名に対応する文字コードでエンコードした現在のバイナリデータの文字列表現を取得します

```cs title="AliceScript"
namespace Alice;
public override string ToString(string charCode);
```

|引数| |
|-|-|
|`charCode`|結果を解釈する文字コードを表す文字列|

|戻り値| |
|-|-|
|`string`| そのデータの文字列表現|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### ToString(number)

指定したコード番号に対応する文字コードでエンコードした現在のバイナリデータの文字列表現を取得します

```cs title="AliceScript"
namespace Alice;
public override string ToString(number codePage);
```

|引数| |
|-|-|
|`codePage`|結果を解釈する文字コードを表すコード番号|

|戻り値| |
|-|-|
|`string`| そのデータの文字列表現|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|


### 例
以下は、`variable`型の文字列表現を取得します

```cs title="AliceScript"
print(variable.ToString()); // 出力例 : variable
```
