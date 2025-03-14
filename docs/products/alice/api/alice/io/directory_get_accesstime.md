---
title: directory_get_accessTime
summary: 指定したディレクトリの最終アクセス日時を取得します。
date : 2024-05-02

mt_type: function
mt_overloads: 2

mt_title: directory_get_accessTime(string)
mt_summary: 指定したディレクトリの最終アクセス日時を取得します。

mt_title: directory_get_accessTime(string,bool)
mt_summary: 日時をUTCで取得するか、現地時間で取得するかを指定して、指定したディレクトリの最終アクセス日時を取得します。
---

### 定義

名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### directory_get_accessTime(string)



指定したディレクトリの最終アクセス日時を取得します。

```cs title="AliceScript"
namespace Alice.IO;
public DateTime directory_get_accessTime(string path);
```

|引数| |
|-|-|
|`path`|最終アクセス日時を取得するディレクトリへのパス|

|戻り値| |
|-|-|
|`DateTime`|ディレクトリの現地時間で表した最終アクセス日時|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

#### directory_get_accessTime(string,bool)



日時をUTCで取得するか、現地時間で取得するかを指定して、指定したディレクトリの最終アクセス日時を取得します。

```cs title="AliceScript"
namespace Alice.IO;
public DateTime directory_get_accessTime(string path, bool getByUTC);
```

|引数| |
|-|-|
|`path`|最終アクセス日時を取得するディレクトリへのパス|
|`getByUTC`|最終アクセス日時を協定世界時(UTC)で取得する場合は`true`、現地時間で取得する場合は`false`|

|戻り値| |
|-|-|
|`DateTime`|ディレクトリの`getByUTC`で指定した方式で表した最終アクセス日時|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

### 説明

`path`にディレクトリが存在しない場合、この関数は1601年1月1日 午前0時12分(UTC)を返します。`getByUTC`を指定していないか`false`の場合は、現地時間に調整して返します。

ディレクトリの最終アクセス日時は書き換えることができるため、この関数が不正確な値を返す可能性があることにご注意ください。また、ファイルシステムやオペレーティングシステムによっては、その他の理由で不正確な値を返す可能性があります。

`path`には、相対パスと絶対パスのどちらでも指定できます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

### 例
次の例では、`test.txt`の最終アクセス日時を表示しています。

```cs title="AliceScript"
using Alice.IO;

print(directory_get_accessTime("test.txt"));
```
