---
title: ToLower
long_title: string.ToLower
summary: 現在の文字列内の文字をすべて小文字に置換します。
date : 2021-12-09
mt_type: method
mt_title: ToLower()
mt_summary: 現在の文字列内の文字をすべて小文字に置換します。
mt_title: ToLower(string?)
mt_summary: 指定された地域の規則を使用して、現在の文字列内の文字をすべて小文字に置換します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### ToLower()

現在の文字列内の文字をすべて小文字に置換します。

```cs title="AliceScript"
namespace Alice;
public string ToLower();
```

|戻り値| |
|-|-|
|`string`|置換後の文字列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

#### ToLower(string?)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

指定された地域の規則を使用して、現在の文字列内の文字をすべて小文字に置換します。

```cs title="AliceScript"
namespace Alice;
public string ToLower(string? cultureName);
```

|引数| |
|-|-|
|`cultureName`|規則を使用する地域の名前。`null`を指定すると地域に依存しない処理を行います。|

|戻り値| |
|-|-|
|`string`|置換後の文字列|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 説明
このメソッドは、現在の文字列をすべて小文字に置換します。

`cultureName`に`null`を指定したときの動作は、[string.ToLowerInvariant()](./tolowerinvariant.md)と同じです。
一般に、カルチャを考慮しないでよいケースではカルチャを指定せず関数を実行した方が安全です。

`cultureName`には、スクリプトを実行しているコンピューターでサポートされているロケールを使用してください。Windowsで使用できるロケール名については、[5 Appendix A: Product Behavior](https://learn.microsoft.com/ja-jp/openspecs/windows_protocols/ms-lcid/a9eac961-e77d-41a6-90a5-ce1a8b0cdb9c)を参照してください。

### 例
以下は、Hello,Worldをすべて小文字にします。

```cs title="AliceScript"
var a = "Hello,World";
print(a.ToLower()); 
```
