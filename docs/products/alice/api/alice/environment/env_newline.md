---
title: env_NewLine
summary: この環境で定義されている改行文字列を取得します。
---
### 定義
名前空間:Alice.Environment / アセンブリ : Losetta.Runtime.dll / サポート: Alice2.0

属性: 関数

#### env_NewLine()

この環境で定義されている改行文字列を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public string env_NewLine();
```

|戻り値| |
|-|-|
|`string`|この環境で定義されている改行文字列。|

### 注意
提供される戻り値は、多くの場合、改行、改行、改行、キャリッジ リターン、CRLF、および行の終了という用語によって意味されます。