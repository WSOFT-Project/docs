---
title: using
summary: 現在のスコープで指定された名前空間への参照を追加します。
---
### 定義
名前空間:Alice / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数の区切りの空白をサポート

`NameSpaceName`という名前空間への参照を追加し、その名前空間にある関数やクラスを使用可能な状態にします。

```cs title="AliceScript"
namespace Alice;
using NamespSpaceName;
```

### 例
以下は、`Alice.IO`への参照を追加する例です。

```cs title="AliceScript"
using Alice.IO;
```
