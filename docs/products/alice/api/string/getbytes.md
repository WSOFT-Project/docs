---
title: GetBytes
long_title : string.GetBytes
summary: 現在の文字列に含まれるすべての文字を指定された文字コードのデータにエンコードします
date : 2023-10-22
mt_type: method
mt_title: GetBytes()
mt_summary: 現在の文字列に含まれるすべての文字をUTF-8文字コードのデータにエンコードします
mt_title: GetBytes(string)
mt_summary: 現在の文字列に含まれるすべての文字を指定された名前に対応する文字コードのデータにエンコードします
mt_title: GetBytes(number)
mt_summary: 現在の文字列に含まれるすべての文字を指定されたコードページに対応する文字コードのデータにエンコードします
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### GetBytes()

現在の文字列に含まれるすべての文字をUTF-8文字コードのデータにエンコードします

```cs title="AliceScript"
namespace Alice;
public bytes GetBytes();
```

|戻り値| |
|-|-|
|`bytes`|文字列をUTF-8でエンコードした結果を格納するバイト配列|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0、4|
    |AliceSister|3.0、4|
    |Losetta|0.10、0.11|

#### GetBytes(string)

現在の文字列に含まれるすべての文字を指定された名前に対応する文字コードのデータにエンコードします

```cs title="AliceScript"
namespace Alice;
public bytes GetBytes(string charCode);
```

|引数| |
|-|-|
|`charCode`|文字列のエンコードに使用する文字コードを表す文字列|

|戻り値| |
|-|-|
|`bytes`|文字列を`charCode`に対応する文字コードでエンコードした結果を格納するバイト配列|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0、4|
    |AliceSister|3.0、4|
    |Losetta|0.10、0.11|


#### GetBytes(number)

現在の文字列に含まれるすべての文字を指定されたコードページに対応する文字コードのデータにエンコードします

```cs title="AliceScript"
namespace Alice;
public bytes GetBytes(number codePage);
```

|引数| |
|-|-|
|`codePage`|文字列のエンコードに使用する文字コードのコードページ|

|戻り値| |
|-|-|
|`bytes`|文字列を`codePage`に対応する文字コードでエンコードした結果を格納するバイト配列|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0、4|
    |AliceSister|3.0、4|
    |Losetta|0.10、0.11|

### 例
以下は、`Hello,World`をUTF-8形式でエンコードしたデータを取得します

```cs title="AliceScript"
string text = "Hello,World";
var data = text.GetBytes("utf-8");
```
