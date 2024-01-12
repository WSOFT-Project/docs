---
title: void
summary: void型は、値を返さない関数の戻り値を表します。
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: Alice3.0

`void`型は、戻り値を返さない関数(プロージャー)の戻り値として使用されます。
`void`型には、代入できる有効な値はありません。
`void`型への暗黙的な変換および明示的な変換はできません。

```cs title="AliceScript"
namespace Alice;
public class void;
```

AliceScriptの`void`型は、他の言語における`void`とは異なり、常に`null`値をとります。
これは、他の言語の[Unit型](https://en.wikipedia.org/wiki/Unit_type)に類似しています。