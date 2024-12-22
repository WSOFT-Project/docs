---
title: Constructor
long_title : String Constructor
summary: 新しい文字列を作成します
draft: true
mt_type: ctor
mt_title: String()
mt_summary: 新しい空文字列を作成します。
mt_title: String(string)
mt_summary: 指定した文字列のコピーを作成します。
mt_title: String(bytes)
mt_summary: 指定したデータをUTF-8形式でエンコードした文字列を作成します。
mt_title: String(bytes,string)
mt_summary: 指定したデータを指定した文字コードでエンコードした文字列を作成します。
mt_title: String(bytes,number)
mt_summary: 指定したデータを指定したコードページ番号に対応する文字コードでエンコードした文字列を作成します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

#### String()

新しい空文字列を作成します。

```cs title="AliceScript"
class Alice.String;
public String();
```

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

#### String(string)

指定した文字列のコピーを作成します。

```cs title="AliceScript"
class Alice.String;
public String(string source);
```

|引数| |
|-|-|
|`source`|コピー元の文字列|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

#### String(bytes)

指定したデータをUTF-8形式でエンコードした文字列を作成します。

```cs title="AliceScript"
class Alice.String;
public String(bytes source);
```

|引数| |
|-|-|
|`source`|UTF-8形式でエンコード可能なデータ|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

#### String(bytes,string)

指定したデータを指定した文字コードでエンコードした文字列を作成します。

```cs title="AliceScript"
class Alice.String;
public String(bytes source, string charCode);
```

|引数| |
|-|-|
|`source`|エンコード可能なデータ|
|`charCode`|文字コードを表す文字列|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

#### String(bytes,number)

指定したデータを指定したコードページ番号に対応する文字コードでエンコードした文字列を作成します。

```cs title="AliceScript"
class Alice.String;
public String(bytes source, number codePage);
```

|引数| |
|-|-|
|`source`|エンコード可能なデータ|
|`codePage`|文字コードを表すコードページ番号|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||
