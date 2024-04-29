---
title: PadCenter
long_title : string.PadCenter
summary: 指定された文字数になるまで両側に指定された文字列を埋め込むことで、この文字列を中央寄せした新しい文字列を作成します。
date : 2023-10-29
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript3.0

指定された文字数になるまで両側に空白文字を埋め込むことで、この文字列を中央寄せした新しい文字列を作成します

```cs title="AliceScript"
namespace Alice;
string PadCenter(number totalWidth, bool padRight = false, bool truncate = false);
```

|引数| |
|-|-|
|`totalWidth`|結果の文字列の文字数|
|`padRight`|文字列を中央寄せするために埋め込む必要がある文字数が左右で異なる場合に、右寄せを優先する場合は`true`、それ以外の場合は`false`|
|`truncate`|対象の文字列の長さが`totalWidth`より長い場合に文字列を切り詰める場合は`true`、それ以外の場合は`false`|

|戻り値| |
|-|-|
|`string`|実行した結果の文字列|

指定された文字数になるまで両側に指定された文字を埋め込むことで、この文字列を中央寄せした新しい文字列を作成します

```cs title="AliceScript"
namespace Alice;
string PadCenter(number totalWidth, string paddingChar = " ", bool padRight = false, bool truncate = false);
```

|引数| |
|-|-|
|`totalWidth`|結果の文字列の文字数|
|`paddingChar`|埋め込む文字を含む文字列。この文字列の0番目の文字が使用されます。|
|`padRight`|文字列を中央寄せするために埋め込む必要がある文字数が左右で異なる場合に、右寄せを優先する場合は`true`、それ以外の場合は`false`|
|`truncate`|対象の文字列の長さが`totalWidth`より長い場合に文字列を切り詰める場合は`true`、それ以外の場合は`false`|

|戻り値| |
|-|-|
|`string`|実行した結果の文字列|

### 例
以下は、さまざまな文字列を15文字分の幅で中央寄せしています。
文字数が多い場合は、切り詰めています。

```cs title="AliceScript"
var tests = ["Hello,World","SomChai","Alice in Discord"];

foreach(string test in tests)
{
    print($"|{test.PadCenter(15,false,true)}|");
}

// 出力
// |  Hello,World  |
// |    SomChai    |
// |Alice in Discor|
```
