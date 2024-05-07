---
title: directory_set_creationTime
summary: 指定したディレクトリの作成日時を設定します。
date : 2024-05-02
draft : true
---

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

### 定義
名前空間: Alice.IO<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.IO.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.IO.cs)

#### directory_set_creationTime(string,DateTime)

指定したディレクトリの作成日時を設定します。

```cs title="AliceScript"
namespace Alice.IO;
public void directory_set_creationTime(string path, DateTime creationTime);
```

|引数| |
|-|-|
|`path`|作成日時を設定するディレクトリへのパス|
|`creationTime`|設定する作成日時。この値は現地時間とみなされます。|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

#### directory_set_creationTime(string,DateTime,bool)

日時をUTCで設定するか、現地時間で設定するかを指定して、指定したディレクトリの作成日時を設定します。

```cs title="AliceScript"
namespace Alice.IO;
public DateTime directory_set_creationTime(string path, DateTime creationTime, bool setByUTC);
```

|引数| |
|-|-|
|`path`|作成日時を設定するディレクトリへのパス|
|`creationTime`|設定する作成日時|
|`setByUTC`|`creationTime`を協定世界時(UTC)とみなして設定する場合は`true`、現地時間とみなして設定する場合は`false`|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 説明

`path`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびファイルシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

### 例
次の例では、`test`の作成日時を現在の日時に更新しています。

```cs title="AliceScript"
using Alice.IO;

print(directory_set_creationTime("test", DateTime.Now));
```
