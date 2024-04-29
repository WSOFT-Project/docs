---
title: GetBytes
long_title : string.GetBytes
summary: 現在の文字列に含まれるすべての文字を指定された文字コードのデータにエンコードします
date : 2023-10-22
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript3.0

現在の文字列に含まれるすべての文字をUTF-8文字コードのデータにエンコードします

```cs title="AliceScript"
namespace Alice;
bytes GetBytes();
```

|戻り値| |
|-|-|
|`bytes`|文字列をUTF-8でエンコードした結果を格納するバイト配列|

現在の文字列に含まれるすべての文字を指定された名前に対応する文字コードのデータにエンコードします

```cs title="AliceScript"
namespace Alice;
bytes GetBytes(string charCode);
```

|引数| |
|-|-|
|`charCode`|文字列のエンコードに使用する文字コードを表す文字列|

|戻り値| |
|-|-|
|`bytes`|文字列を`charCode`に対応する文字コードでエンコードした結果を格納するバイト配列|

現在の文字列に含まれるすべての文字を指定されたコードページに対応する文字コードのデータにエンコードします

```cs title="AliceScript"
namespace Alice;
bytes GetBytes(number codePage);
```

|引数| |
|-|-|
|`codePage`|文字列のエンコードに使用する文字コードのコードページ|

|戻り値| |
|-|-|
|`bytes`|文字列を`codePage`に対応する文字コードでエンコードした結果を格納するバイト配列|

### 例
以下は、`Hello,World`をUTF-8形式でエンコードしたデータを取得します

```cs title="AliceScript"
string text = "Hello,World";
var data = text.GetBytes("utf-8");
```
