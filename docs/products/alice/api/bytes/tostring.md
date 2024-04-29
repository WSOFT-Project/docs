---
title: ToString
long_title : bytes.ToString
summary: 指定した文字コードでエンコードした現在のバイナリデータの文字列表現を取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: Alice3.0

#### ToString(string)

指定した文字コード名に対応する文字コードでエンコードした現在のバイナリデータの文字列表現を取得します

```cs title="AliceScript"
namespace Alice;
override string ToString(string charCode);
```

|引数| |
|-|-|
|`charCode`|結果を解釈する文字コードを表す文字列|

|戻り値| |
|-|-|
|`string`| そのデータの文字列表現|

#### ToString(number)

指定したコード番号に対応する文字コードでエンコードした現在のバイナリデータの文字列表現を取得します

```cs title="AliceScript"
namespace Alice;
override string ToString(number codePage);
```

|引数| |
|-|-|
|`codePage`|結果を解釈する文字コードを表すコード番号|

|戻り値| |
|-|-|
|`string`| そのデータの文字列表現|


### 例
以下は、`variable`型の文字列表現を取得します

```cs title="AliceScript"
print(variable.ToString()); // 出力例 : variable
```
