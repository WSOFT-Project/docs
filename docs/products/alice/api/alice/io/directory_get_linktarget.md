---
title: directory_get_linkTarget
summary: 指定したディレクトリリンクのリンク先を取得します。
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

#### directory_get_linkTarget(string,bool)

指定したディレクトリリンクのリンク先を取得します。

```cs title="AliceScript"
namespace Alice.IO;
public string directory_get_linkTarget(string path, bool getFinalTarget);
```

|引数| |
|-|-|
|`path`|リンク先を取得するディレクトリリンクへのパス|
|`getFinalTarget`|ディレクトリの実体にたどり着くまで再帰的に取得する場合は`true`、それ以外の場合は`false`|

|戻り値| |
|-|-|
|`string`|`path`のリンク先へのパス。ただし、`path`がリンクではない場合は`null`。|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

    この関数はAliceScript、AliceSisterでは実装されていません。

    実装されていない環境では`0x034 NOT_IMPLEMENTED`例外がスローされます。

### 説明
この関数は、シンボリックリンクまたはジャンクションのリンク先を絶対パスで取得します。

`getFinalTarget`が`true`の場合、この関数はディレクトリの実体にたどり着くまで再帰的にリンク先を取得しようとします。ただし、たどるリンクの数がUnixで40個以上、Windowsで63個以上の場合は例外が発生します。

`path`には、相対パスと絶対パスのどちらを指定することもできます。
相対パスを指定した場合、カレントディレクトリからの相対パスとして解釈します。
パスの大文字と小文字の区別は、環境およびディレクトリシステムに依存します。たとえば、NTFSでは大文字と小文字は区別されませんが、LFSでは大文字と小文字が区別されます。

### 例
次の例では、`link.txt`のリンク先を表示しています。

```cs title="AliceScript"
using Alice.IO;

print(directory_get_linkTarget("link.txt", true));
```
