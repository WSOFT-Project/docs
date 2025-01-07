---
title: file_set_creationTime
summary: 指定したファイルまたはディレクトリの作成日時を設定します。
date : 2024-05-02

mt_type: function
mt_title: file_set_creationTime(string,DateTime)
mt_summary: 指定したファイルまたはディレクトリの作成日時を設定します。
mt_title: file_set_creationTime(string,DateTime,bool)
mt_summary: 日時をUTCで設定するか、現地時間で設定するかを指定して、指定したファイルまたはディレクトリの作成日時を設定します。
---

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### file_set_creationTime(string,DateTime)



指定したファイルまたはディレクトリの作成日時を設定します。

```cs title="AliceScript"
namespace Alice.IO;
public void file_set_creationTime(string path, DateTime creationTime);
```

|引数| |
|-|-|
|`path`|作成日時を設定するファイルまたはディレクトリへのパス|
|`creationTime`|設定する作成日時。この値は現地時間とみなされます。|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

#### file_set_creationTime(string,DateTime,bool)



日時をUTCで設定するか、現地時間で設定するかを指定して、指定したファイルまたはディレクトリの作成日時を設定します。

```cs title="AliceScript"
namespace Alice.IO;
public DateTime file_set_creationTime(string path, DateTime creationTime, bool setByUTC);
```

|引数| |
|-|-|
|`path`|作成日時を設定するファイルまたはディレクトリへのパス|
|`creationTime`|設定する作成日時|
|`setByUTC`|`creationTime`を協定世界時(UTC)とみなして設定する場合は`true`、現地時間とみなして設定する場合は`false`|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

### 説明

`path`には、相対パスと絶対パスのどちらでも指定できます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

### 例
次の例では、`test.txt`の作成日時を現在の日時に更新しています。

```cs title="AliceScript"
using Alice.IO;

print(file_set_creationTime("test.txt", DateTime.Now));
```
