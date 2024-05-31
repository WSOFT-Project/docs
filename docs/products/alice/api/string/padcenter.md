---
title: PadCenter
long_title : string.PadCenter
summary: 指定された文字数になるまで両側に指定された文字を埋め込むことで、この文字列を中央寄せした新しい文字列を作成します。
date : 2023-10-29
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### PadCenter(number,bool,bool)

指定された文字数になるまで両側に空白文字を埋め込むことで、この文字列を中央寄せした新しい文字列を作成します

```cs title="AliceScript"
namespace Alice;
public string PadCenter(number totalWidth, bool padLeft = false, bool truncate = false);
```

|引数| |
|-|-|
|`totalWidth`|結果の文字列の文字数|
|`padLeft`|文字列を中央寄せするために埋め込む必要がある文字数が左右で異なる場合に、左寄せを優先する場合は`true`、右寄せを優先する場合は`false`。規定値は`false`です。|
|`truncate`|対象の文字列の長さが`totalWidth`より長い場合に文字列を切り詰める場合は`true`、切り詰めずすべて表示する場合は`false`。規定値は`false`です。|

|戻り値| |
|-|-|
|`string`|実行した結果の文字列|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

#### PadCenter(number,string,bool,bool)

指定された文字数になるまで両側に指定された文字を埋め込むことで、この文字列を中央寄せした新しい文字列を作成します

```cs title="AliceScript"
namespace Alice;
public string PadCenter(number totalWidth, string paddingChar = " ", bool padRight = false, bool truncate = false);
```

|引数| |
|-|-|
|`totalWidth`|結果の文字列の文字数|
|`paddingChar`|埋め込む文字を含む文字列。この文字列の最初の文字が使用されます。|
|`padLeft`|文字列を中央寄せするために埋め込む必要がある文字数が左右で異なる場合に、左寄せを優先する場合は`true`、右寄せを優先する場合は`false`。規定値は`false`です。|
|`truncate`|対象の文字列の長さが`totalWidth`より長い場合に文字列を切り詰める場合は`true`、切り詰めずすべて表示する場合は`false`。規定値は`false`です。|

|戻り値| |
|-|-|
|`string`|実行した結果の文字列|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明
この関数は、文字列を特定の文字数の中で中央寄せします。

中央寄せとは、その文字列が全体のあたかも中央にあるかのように、指定された長さになるまで左右に文字を追加することです。追加される文字は`paddingChar`で指定できます。この引数に長さが2以上の文字列が指定された場合は、先頭の1文字目が使用されます。

長さが偶数の文字列は、完全に中央に配置することができません。これは、文字列の「真ん中」を決定できないからです。このような場合、左右どちらかに一文字はみ出すことになりますが、規定では右に一文字はみ出します。これによって、出力した時に中央から一文字分右にずれて見えます。これを左寄せにする場合は、`padLeft`に`true`を指定してください。

規定ではこの関数は、文字列の長さが`totalWidth`より大きい場合は、そのままの文字列を返します。文字列を`totalWidth`まで切り詰めたい場合は、`truncate`に`true`を指定してください。ただし、この切り詰めは文字列の右側に適用されます。

次の表は、`totalWidth`を`5`に、`paddingChar`に`*`を指定したとして、文字列がどのように中央揃えされるかを表しています。

対象の文字列|`padLeft`の値|`truncate`の値|結果
----------|------------|-------------|----
ABC|関係なし|関係なし|\*ABC\*
AB|`true`|関係なし|\*AB\*\*
AB|`false`|関係なし|\*\*AB\*
ABCDEF|関係なし|`true`|ABCDE
ABCDEF|関係なし|`false`|ABCDEF

文字列を右寄せするには[string.PadLeft](./padleft.md)メソッドを、左寄せするには[string.PadRight](./padright.md)メソッドを使用してください。

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
