---
title: env_lang_version
summary: 現在のプログラミング言語のバージョンを表す文字列を取得します。
date : 2024-07-14
mt_type: function
mt_title: env_lang_version()
---
### 定義
名前空間: Alice.Environment<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Environment.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Environment.cs)

#### env_lang_version()

現在のプログラミング言語のバージョンを表す文字列を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public string env_lang_version();
```

|戻り値| |
|-|-|
|`string`|[SAIM](../../../general/saim.md)の実装が報告したプログラミング言語のバージョンを表す文字列。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 例
次の例では、プログラミング言語のバージョンを表示します。

```cs title="AliceScript"
using Alice.Environment;

print(env_lang_version());
```