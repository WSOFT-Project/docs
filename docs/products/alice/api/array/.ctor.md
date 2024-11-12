---
title: コンストラクター
long_title : Arrayコンストラクター
summary: 配列の新しいインスタンスを初期化します
draft: true
mt_type: ctor
mt_title: Array()
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Array.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Extension/Alice.Core.Array.cs)

> [!IMPORTANT] プレビュー
> この記事では、現在開発中のAlice vNEXTに実装される予定のAPIについて説明しています。
> このAPIは予告なく削除および変更される可能性があります。

#### Array()

空で、適当な容量を持つ配列を作成します。

```cs title="AliceScript"
class Alice.Array;
public Array();
```

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

#### Array(type)

空で、適当な容量を持ち特定の型のみを要素に持てる配列を作成します。

```cs title="AliceScript"
class Alice.Array;
public Array(Type type);
```

|引数| |
|-|-|
|`type`|要素に持てる配列を制限する型|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||
