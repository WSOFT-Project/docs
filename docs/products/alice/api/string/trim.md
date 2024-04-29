---
title: Trim
long_title: string.Trim
summary: 現在の文字列から指定した文字列が先頭および末尾に現れる箇所をすべて削除した文字列を取得します
date : 2021-12-09
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の文字列から先頭および末尾にある空白文字をすべて削除した文字列を取得します

```cs title="AliceScript"
namespace Alice;
string Trim();
```

|戻り値| |
|-|-|
|`string`|実行後の文字列|

現在の文字列から指定した文字列が先頭および末尾に現れる箇所をすべて削除した文字列を取得します

```cs title="AliceScript"
namespace Alice;
string Trim(params string item);
```

|引数| |
|-|-|
|`item`|削除する文字列。この引数は可変長個指定できます。|

|戻り値| |
|-|-|
|`string`|実行後の文字列|

### 例
以下は、" Hello,World "から空白文字を削除します。

```cs title="AliceScript"
var a = " Hello,World ";
print(a.Trim()); // 出力例 : Hello,World
```
