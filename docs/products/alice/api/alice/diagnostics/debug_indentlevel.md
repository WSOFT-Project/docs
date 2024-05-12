---
title: debug_indentLevel
summary: デバッグ出力のインデントレベルを取得または設定します。
date : 2021-11-09
---

### 定義
名前空間: Alice.Diagnostics<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Diagnostics.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Diagnostics.cs)

#### debug_indentLevel()

デバッグ出力のインデントレベルを取得します。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public number debug_indentLevel();
```

|戻り値| |
|-|-|
|`number`|インデントレベル。既定値は`0`です。|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### debug_indentLevel(number)

デバッグ出力のインデントレベルを設定します。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public number debug_indentLevel(number indentLevel);
```

|引数| |
|-|-|
|`indentLevel`|設定するインデントレベル。|

|戻り値| |
|-|-|
|`number`|インデントレベル。既定値は`0`です。|

???note "対応: AliceScript RC2以降"
    |対応||
    |---|---|
    |AliceScript|RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### debug_indentLevel

デバッグ出力のインデントレベルを取得または設定します。

```cs title="AliceScript"
namespace Alice.Diagnostics;
public number debug_indentLevel { get; set; }
```

|値| |
|-|-|
|`number`|デバッグ出力のインデントレベル。既定値は`0`です。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 例
次の例では、インデントレベルを設定し、デバッグ出力に書き込みます。

```cs title="AliceScript"
using Alice.Diagnostics;

debug_print("あなたはシステム管理者から通常の講習を受けたはずです。");
debug_print("これは通常、以下の3点に要約されます:");
debug_print();
debug_indent();
debug_print("#1) 他人のプライバシーを尊重すること。");
debug_print("#2) タイプする前に考えること。");
debug_print("#3) 大いなる力には大いなる責任が伴うこと。");
debug_unIndent();
debug_print();
debug_print("[sudo] [ユーザー名] のパスワード");
```

この例を実行すると、次のように出力されます。

```txt title="出力"
あなたはシステム管理者から通常の講習を受けたはずです。
これは通常、以下の3点に要約されます:

    #1) 他人のプライバシーを尊重すること。
    #2) タイプする前に考えること。
    #3) 大いなる力には大いなる責任が伴うこと。

[sudo] [ユーザー名] のパスワード:
```