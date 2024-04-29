---
title: env_clr_version
summary: 実行中の共通言語ランタイムのバージョンの文字列表現を取得します。
date : 2023-08-09
---
### 定義
名前空間:Alice.Environment / アセンブリ : Losetta.Runtime.dll / サポート: Alice2.0

属性: 関数

実行中の共通言語ランタイムのバージョンの文字列表現を取得します。

```cs title="AliceScript"
namespace Alice.Environment;
public string env_clr_version();
```

|戻り値| |
|-|-|
|`string`|共通言語ランタイム上で実行されている場合は、そのバージョンを表す文字列。それ以外の場合は空の文字列。|

### 説明
この関数は、実行中の共通言語ランタイムのバージョンの文字列表現を取得します。
共通言語ランタイムは、[SAIM](../../../general/saim.md)に規定されたものではなく、AliceScriptやAliceSister、Losettaが基盤としている[dotNET-CLR](https://learn.microsoft.com/ja-jp/dotnet/standard/clr)のことです。
dotNET上で動作しないAliceScriptの実装は、その実行基盤があればそのバージョン情報を、なければ空の文字列を返します。

実行環境がAliceScriptとLosettaの場合、この関数はdotNETランタイムのバージョン番号を返します。

AliceSisterで実行している場合は、`4.0.3019.xxxxx`という形式のバージョン番号を返します。
### 例
次の例では、共通言語ラインタイムのバージョンを表示します。

```cs title="AliceScript"
using Alice.Environment;

print(env_clr_version());
```