---
title: using
summary: 現在のスクリプトに指定された名前空間への参照を追加します。
mt_type: function
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Flow.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Alice.Core.Flow.cs)


現在のスクリプトに特定の名前空間への参照を追加し、その名前空間にある関数やクラスを使用可能な状態にします。

```cs title="AliceScript"
namespace Alice;
public void using string spaceName;
```

|引数| |
|-|-|
|`spaceName`| 参照を追加する名前空間名。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0、4|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0、4|
    |Losetta|0.8、0.9、0.10、0.11|

### 基本
`using`宣言文を使用すると、その型の完全修飾名を使用せずに、現在のスクリプトで名前空間で定義された関数やクラスを使用できます。
次の例では、現在のスクリプトに`Alice.IO`への参照を追加しています。

```cs title="AliceScript"
using Alice.IO;
```

`using`宣言文に`public`修飾子を設定すると、インタプリタのすべてのスクリプトに同じ`using`を追加するのと同じ効果があります。この修飾子は[AliceScript2.2](../../changelog/2-2.md)で導入されました。

### public修飾子
`public`修飾子を`using`宣言文と一緒に使用すると、同じインタプリタで実行されるすべてのスクリプトで参照を追加できます。
次の例では、インタプリタで実行されるすべてのスクリプトに`Alice.IO`への参照を追加しています。

```cs title="AliceScript"
public using Alice.IO;
```