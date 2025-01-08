---
title: ToUpper
long_title: string.ToUpper
summary: 現在の文字列内の文字をすべて大文字に置換します
date : 2021-12-09
mt_type: method
mt_title: ToUpper()
mt_summary: 現在の文字列内の文字をすべて大文字に置換します。
mt_title: ToUpper(string?)
mt_summary: 指定された地域の規則を使用して、現在の文字列内の文字をすべて大文字に置換します。
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.String.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.String.cs)

#### ToUpper()

現在の文字列内の文字をすべて大文字に置換します。

```cs title="AliceScript"
namespace Alice;
public string ToUpper();
```

|戻り値| |
|-|-|
|`string`|置換後の文字列|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

#### ToUpper(string?)



指定された地域の規則を使用して、現在の文字列内の文字をすべて大文字に置換します。

```cs title="AliceScript"
namespace Alice;
public string ToUpper(string? cultureName);
```

|引数| |
|-|-|
|`cultureName`|規則を使用する地域の名前。`null`を指定すると地域に依存しない処理を行います。|

|戻り値| |
|-|-|
|`string`|置換後の文字列|

???note "対応: Alice4以降"
    |対応||
    |---|---|
    |AliceScript|4|
    |AliceSister|4|
    |Losetta|0.11|

### 説明
このメソッドは、現在の文字列をすべて大文字に置換します。

`cultureName`に`null`を指定したときの動作は、[string.ToUpperInvariant()](./toupperinvariant.md)と同じです。
一般に、カルチャを考慮しないでよいケースではカルチャを指定せず関数を実行した方が安全です。

`cultureName`には、スクリプトを実行しているコンピューターでサポートされているロケールを使用してください。Windowsで使用できるロケール名については、[5 Appendix A: Product Behavior](https://learn.microsoft.com/ja-jp/openspecs/windows_protocols/ms-lcid/a9eac961-e77d-41a6-90a5-ce1a8b0cdb9c)を参照してください。

### 例
以下は、Hello,Worldをすべて大文字にします。

```cs title="AliceScript"
var a = "Hello,World";
print(a.ToUpper()); 
```
