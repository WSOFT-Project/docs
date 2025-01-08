---
title: guid_new_bytes
summary: 新しいGUID(UUID)を生成し、その値を格納する16バイトのバイト配列を取得します。
date : 2021-08-10
mt_type: function
mt_title: guid_new_bytes()
---

### 定義
名前空間: Alice.Random<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Random.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Random.cs)

#### guid_new_bytes()

新しいGUID(UUID)を生成し、その値を格納する16バイトのバイト配列を取得します。

```cs title="AliceScript"
namespace Alice.Random;
public bytes guid_new_bytes();
```

|戻り値| |
|-|-|
|`bytes`|新しいGUIDの値を格納する16バイトのバイト配列。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 説明
この関数は、[RFC4122 Sec.4.4](https://datatracker.ietf.org/doc/html/rfc4122#section-4.4)に準拠したUUIDv4を作成します。

使用するSAIMの実装がAliceSisterであるかAliceScriptかLosettaを実行する環境がWindowsの場合、この関数はWindowsAPIの[CoCreateGuid](https://learn.microsoft.com/ja-jp/windows/win32/api/combaseapi/nf-combaseapi-cocreateguid)関数をラップします。

LosettaのWindows以外向けのバージョンでは、この関数は暗号学的に安全な疑似乱数ジェネレーター(CSPRNG)を呼び出してGUIDを生成します。AliceScriptのWindows向け以外のバージョンでは、GUIDが暗号学的に安全な方法で生成されるとは限りません。

この関数が生成する値は、暗号学的には安全ではありません。
たとえば、UUIDv4には、一部に予測可能なビットパターンがあります。
ほかにも、GUIDを生成する際に使用するエントロピーは、プラットフォームに関係なく最大122ビットですが、多くの暗号学的に安全とされるアルゴリズムではこのエントロピーは128ビット以上のものを使用します。暗号学的に安全な入力が求められている関数やAPIにこの値を渡すと、ポリシーに違反するとともに、信用を損なうことがあります。
そのため、これを暗号や、推測できないことが期待される値として使うことはできません。

暗号学的に安全な乱数が必要な場合は、[random_int](./random_int.md)か[random_bytes](./random_bytes.md)関数を使用することを検討してください。

### 例
次の例では、GUIDの長さを表示します。

```cs title="AliceScript"
using Alice.Random;

print(guid_new_bytes().Length);//出力例:16
```