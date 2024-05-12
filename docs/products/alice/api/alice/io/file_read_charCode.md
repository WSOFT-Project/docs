---
title: file_read_charCode
summary: 指定したファイルで使用されている文字コードを判別し、それを表す文字列を返します
date : 2023-10-28
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### file_read_charCode(string,bool)

指定したファイルをファイルシステムまたは現在のパッケージから読み取り、ファイルで使用されている文字コードを判別し、文字コードのコードページを表す文字列を返します。

```cs title="AliceScript"
namespace Alice.IO;
public string file_read_charCode(string path, bool fromPackage = false);
```

|引数| |
|-|-|
|`path`|読み取るファイルへのパス|
|`fromPackage`|ファイルを現在のパッケージから読み取る場合は`true`、ファイルシステムから読み取る場合は`false`。既定値は`false`です。|

|戻り値| |
|-|-|
|`string`|文字コードのコードページを表す文字列|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明

`source`や`destination`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

この関数は、ファイルを開き、ファイル内のデータをすべて読み取った後ファイルを閉じて結果を返します。

この関数は、[ReadJEnc](https://github.com/hnx8/ReadJEnc)を使用してファイルで使用されている文字コードを検出します。また、**Unicodeまたは文字コードを認識できない場合は常に0が返る**ことにご注意ください。
文字コードと対応する文字コード名については、以下を参照してください。
この関数は以下の表の**文字コード名**を返します。

|規格名|言語|文字コード名|コードページ|
|---|---|---|---|
|ASCII|英語|ASCII|0|
|ANSI|西ヨーロッパ諸語|ANSI1252|1252|
|ISO-2022-JP MS拡張|日本語|JIS|50221|
|ISO-2022-JP Allow 1byte Kana|日本語|JIS50222|50222|
|Shift-JIS|日本語|ShiftJIS|932|
|EUC-JP|日本語|EUCJP|51932|
|BIG5|繁体字中国語|Big5|950|
|x-Chinese-CNS|繫体字中国語|EUC-TW|20000|
|GB18030|簡体字中国語|GB18030|54936|
|EUC-CN|簡体字中国語|GB18030|54936|
|ISO-2022-KR|韓国語|ISO-KR|50225|
|KS_C_5601-1987|韓国語|UHC|949|
|EUC-KR|韓国語|UHC|949|
|ISO-8859-2|中央ヨーロッパ諸語(チェコ語など)|CP1250|1250|
|ISO-8859-7|ギリシャ語|CP1253|1253|
|ISO-8859-9|トルコ語|CP1254|1254|
|ISO-8859-8|ヘブライ語|CP1255|1255|
|ISO-8859-13|バルト諸語|CP1257|1257|
|Windows1251|キリル諸語(ロシア語など)|CP1251|1251|
|Windows1256|アラビア語|CP1256|1256|
|Windows1258|ベトナム語|CP1258|1258|
|TIS-620/WIndows874|タイ語|TIS-620|874|

また、場合によっては以下の文字コード名またはコードページを返します。

|文字コード名|コードページ|理由|
|---|---|---|
|JIS破損|-50221|JISのように見えるがデコード不能な場所あり|
|EUC補漢|20932|EUC補助漢字を含むため、MS-CP20932をデコードに使用|
|読込不能|0|読み込みに失敗|
|空File|0|空のファイル|
|巨大File|0|ファイルサイズが2.147483647GBより大きい|
|$BINARY|0|バイナリ|
|$JavaBin|-65001|Javaバイトコード|
|$WinExec|0|Windows実行ファイル|
|$WinLnk|0|WIndowsショートカットファイル|
|%PDF|0|PDFファイル|
|$ZIP|0|ZIP圧縮されたファイル|
|$GZIP|0|GZIP圧縮されたファイル|
|$7ZIP|0|7ZIP圧縮されたファイル|
|$RAR|0|RAR圧縮されたファイル|
|$CAB|0|キャビネット(Cab)ファイル|
|$BZIP2|0|BZIP2圧縮されたファイル|
|$Z-LZW|0|Z(compress)圧縮されたファイル|
|%BMP|0|ビットマップ画像ファイル|
|%GIF|0|GIF画像ファイル|
|%JPEG|0|JPEG画像ファイル|
|%PNG|0|PNG画像ファイル|
|%TIFF|0|TIFF画像ファイル|
|%ICON|0|Windowsアイコンファイル|

### 例
次の例では、`test.txt`の文字コードを判別し、文字コードを表す文字列を表示します。

```cs title="AliceScript"
using Alice.IO;

number codePage = file_read_charCode("test.txt");
print(codePage);
```
