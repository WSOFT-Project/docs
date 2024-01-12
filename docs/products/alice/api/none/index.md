---
title: none
summary: none型は、その値がnullであることを表します
date : 2021-12-08
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

!!!warning "互換性"
    Alice3.0以降のバージョンでは、関数は`none`型ではなく`void`型を返します。
    詳しくは[void型](../void/index.md)をご覧ください。

none型は、その値が`null`であることを表します。none型の有効な値は唯一nullです。この型はnullをとります。また、null型は比較演算子のみをサポートします。 nullの値を表す定数がnullとして定義されています。 null型への暗黙的な変換および明示的な変換はサポートされていません。

```cs title="AliceScript"
namespace Alice;
public class null;
```