---
title: env_NewLine
summary: この環境で定義されている改行文字列を取得します。
---
### 定義
名前空間:Alice.Environment<br/>
アセンブリ : Losetta.Runtime.dll<br/>
実装 : [Alice.Environment.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Environment.cs)

#### env_NewLine()

この環境で定義されている改行文字列を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public string env_NewLine();
```

|戻り値| |
|-|-|
|`string`|この環境で定義されている改行文字列。|

???note "対応: Alice2.0以降"
    |対応||
    |---|---|
    |AliceScript|2.0、2.1、2.2、2.3、3.0|
    |AliceSister|2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.9、0.10|

### 注意
提供される戻り値は、多くの場合、改行、改行、改行、キャリッジ リターン、CRLF、および行の終了という用語によって意味されます。