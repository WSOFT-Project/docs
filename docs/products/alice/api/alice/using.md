---
title: using
summary: 現在のスコープに指定された名前空間への参照を追加します。
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数の区切りの空白をサポート

現在のスコープに特定の名前空間への参照を追加し、その名前空間にある関数やクラスを使用可能な状態にします。

```cs title="AliceScript"
namespace Alice;
public command using;
```

### 例
以下は、現在のスコープに`Alice.IO`への参照を追加する例です。

```cs title="AliceScript"
using Alice.IO;
```

`public`修飾子を使用すれば、現在のインタプリタ上の全てのスコープで名前空間を参照できます。

```cs title="AliceScript"
public using Alice.IO;
```
