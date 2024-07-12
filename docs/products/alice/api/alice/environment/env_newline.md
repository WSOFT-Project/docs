---
title: env_newLine
summary: このスクリプトを実行している環境で定義されている改行文字列を取得します。
mt_type: function
mt_title: env_newLine()
---
### 定義
名前空間: Alice.Environment<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Environment.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Environment.cs)

#### env_newLine()

このスクリプトを実行している環境で定義されている改行文字列を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public string env_newLine();
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

### 説明
この関数は、現在の環境で定義されている改行文字を返します。
この関数の戻り値は、OSによって異なります。