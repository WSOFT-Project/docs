---
title: file_read_text
summary: 指定したファイルを読み取り、結果を文字列で返します。
date : 2021-07-28
mt_type: function
mt_title: file_read_text(string)
mt_summary: 指定したファイルを読み取り、結果を文字列で返します。
mt_title: file_read_text(string,bool)
mt_summary: 指定したファイルをファイルシステムまたは現在のパッケージから読み取り、結果を文字列で返します。
mt_title: file_read_text(string,string,bool)
mt_summary: 指定したファイルをファイルシステムまたは現在のパッケージから読み取り、結果を指定された文字コードで解釈した文字列を返します。
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### file_read_text(string)

指定したファイルを読み取り、結果を文字列で返します。

```cs title="AliceScript"
namespace Alice.IO;
public string file_read_text(string path);
```

|引数| |
|-|-|
|`path`|読み取るファイルへのパス|

|戻り値| |
|-|-|
|`string`|ファイル内のすべての文字列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

#### file_read_text(string,bool)

指定したファイルをファイルシステムまたは現在のパッケージから読み取り、結果を文字列で返します。

```cs title="AliceScript"
namespace Alice.IO;
public string file_read_text(string path, bool fromPackage);
```

|引数| |
|-|-|
|`path`|読み取るファイルへのパス|
|`fromPackage`|ファイルを現在のパッケージから読み取る場合は`true`、ファイルシステムから読み取る場合は`false`|

|戻り値| |
|-|-|
|`string`|ファイル内のすべての文字列|

|例外| |
|---|-|
|[FILE_NOT_FOUND](../../../exceptions/0x01b.md)|ファイル'`filename`'が見つかりませんでした。|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.9、0.10、0.11|

#### file_read_text(string,string,bool)

指定したファイルをファイルシステムまたは現在のパッケージから読み取り、結果を指定された文字コードで解釈した文字列を返します。

```cs title="AliceScript"
namespace Alice.IO;
public string file_read_text(string path, string charCode, bool fromPackage = false);
```

|引数| |
|-|-|
|`path`|読み取るファイルへのパス|
|`charCode`|結果を解釈する文字コードを表す文字列|
|`fromPackage`|ファイルを現在のパッケージから読み取る場合は`true`、ファイルシステムから読み取る場合は`false`|

|戻り値| |
|-|-|
|`string`|ファイル内のすべての文字列|

|例外| |
|---|-|
|[FILE_NOT_FOUND](../../../exceptions/0x01b.md)|ファイル'`filename`'が見つかりませんでした。|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.9、0.10、0.11|

#### file_read_text(string,number,bool)

指定したファイルをファイルシステムまたは現在のパッケージから読み取り、結果を指定された文字コードで解釈した文字列を返します。

```cs title="AliceScript"
namespace Alice.IO;
public string file_read_text(string path, number codePage, bool fromPackage = false);
```

|引数| |
|-|-|
|`path`|読み取るファイルへのパス|
|`codePage`|結果を解釈する文字コードを表すコード番号|
|`fromPackage`|ファイルを現在のパッケージから読み取る場合は`true`、ファイルシステムから読み取る場合は`false`|

|戻り値| |
|-|-|
|`string`|ファイル内のすべての文字列|

|例外| |
|---|-|
|[FILE_NOT_FOUND](../../../exceptions/0x01b.md)|ファイル'`filename`'が見つかりませんでした。|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.9、0.10、0.11|

### 説明

`source`や`destination`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

関数内で例外が発生した場合でも、ファイルは適切に閉じられます。

この関数は、ファイルを開き、ファイル内のデータをすべて読み取った後ファイルを閉じて結果を返します。

この関数は、文字コードが指定されなかった場合、[ReadJEnc](https://github.com/hnx8/ReadJEnc)を使用してファイルで使用されている文字コードを自動的に検出します。ファイルが適当な文字コードでデコード可能な場合、以下の文字コードのいずれかを用いてデータをテキストに変換します。

- UTF-8(BOMあり)
- UTF-8(BOMなし)
- UTF-16(BOMありリトルエンディアン)
- UTF-16(BOMありビッグエンディアン)
- UTF-16(BOMなしリトルエンディアン)
- UTF-16(BOMなしビッグエンディアン)
- UTF-32(リトルエンディアン)
- UTF-32(BOMありビッグエンディアン)
- ASCII
- ANSI(西欧諸語)
- Shift-JIS(日本語)
- EUC-JP(日本語)
- CP50221(ISO-2022-JP拡張 日本語)
- CP50222(ISO-2022-JP拡張 SO/SI 日本語)
- BIG5(繁体字中国語)
- EUC-TW(繁体字中国語)
- GB18030(簡体字中国語)
- EUC-KR(韓国語)
- CP1250(中央ヨーロッパ諸語)
- CP1251(ロシア語等)
- CP1253(ギリシャ語)
- CP1254(トルコ語)
- CP1225(ヘブライ語)
- CP1256(アラビア語)
- CP1257(バルト諸語)
- CP1258(ベトナム語)
- TIS-620(タイ語)

### 例
次の例では、`test.txt`を読み取り、コンソールに出力します、

```cs title="AliceScript"
using Alice.IO;

string content = file_read_text("test.txt");
print(content);
```
