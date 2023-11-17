---
title: PadRight
summary: 指定された文字数になるまで右側に指定された文字列を埋め込むことで、この文字列を左寄せした新しい文字列を取得します
date : 2021-12-09
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

指定された文字数になるまで右側に指定された文字列を埋め込むことで、この文字列を左寄せした新しい文字列を取得します

```cs title="AliceScript"
namespace Alice;
string PadRight(number totalWidth,string padding=" ");
```

|引数| |
|-|-|
|`totalWidth`|結果の文字列の文字数|
|`padding`|埋め込む文字を含む文字列。この文字列の0番目の文字が使用されます。|

|戻り値| |
|-|-|
|`string`|実行した結果の文字列|

### 例
以下は、"Hello,World"を20文字になるように左寄せします。

```cs title="AliceScript"
var a = "Hello,World";
a.PadRight(20);
```
