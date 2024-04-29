---
title: RemoveAt
long_title: string.RemoveAt
summary: 現在の文字列の指定したインデックスにある値を削除した文字列を取得します
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

現在の文字列の指定したインデックスにある値を削除した文字列を取得します

```cs title="AliceScript"
namespace Alice;
string RemoveAt(number index);
```

|引数| |
|-|-|
|`index`|配列から削除する要素のインデックス|

|戻り値| |
|-|-|
|`string`|実行後の文字列|

### 例
以下は、Hello,Worldから1文字目の文字を削除します。

```cs title="AliceScript"
var a = "Hello,World";
print(a.RemoveAt(2)); // 出力例 : ello,World
```
