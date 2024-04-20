---
title: Like
long_title : string.Like
summary: 文字列を指定されたパターンと比較します。
---

### 定義
名前空間:Alice.Regex / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript3.0

属性: 関数

文字列が一定のパターンと一致するかどうかを調べます。

```cs title="AliceScript"
namespace Alice.Regex;
public bool Like(this string input, string pattern);
```

|引数| |
|-|-|
|`input`|比較する文字列|
|`pattern`|比較するパターン|

|戻り値| |
|-|-|
|`bool`|入力文字列が`pattern`と一致する場合は`true`、それ以外の場合は`false`|

### 説明
このメソッドは、入力文字列を`pattern`で指定されたワイルドカードを含むパターンと比較します。このメソッドで使用できるパターンと対応する正規表現と意味について示します。

パターン|正規表現|意味
---|---|---
`?`|`.`|任意の一文字
`*`|`.*`|0個以上の任意の文字
`#`|`\d`|任意の数字一文字
`[clist]`|`[clist]`|`clist`内の任意の一文字
`[!clist]`|`[^clist]`|`clist`以外の任意の一文字

この関数ではこの表に示した以外のパターンを表現することはできません。直接入力した正規表現パターンは、[regex_escape](./regex_escape.md)関数を使用して事前にエスケープされます。

このメソッドによる文字列比較は、VisualBasicのLike演算子を使った比較と互換性があります。このメソッドは`pattern`を内部で正規表現に変換し実行するため、動作速度は正規表現の比較と同じかそれ以下です。

一般に、正規表現の検索は時間がかかる操作です。そのため、"特定の文字列から始まる"や、"特定の長さ以内"などの簡単な条件に対する調査には[string.StartsWith](../../string/startswith.md)や`string.Length`を使用してください。

### 例
次の例では、文字列が郵便番号の形式`###-####`かを確認しています。

```cs title="AliceScript"
using Alice.Regex;

print("123-4567".Like("###-####"));
//出力: true

print("090-1234-5678".Like("###-####"));
//出力: false
```