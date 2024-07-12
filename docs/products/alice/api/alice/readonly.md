---
title: readonly
long_title : readonly文
summary: 現在の範囲内で変数を読み取り専用にします。
mt_type: function
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Flow.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Alice.Core.Flow.cs)

現在の範囲内で変数を読み取り専用にします。

```cs title="AliceScript"
namespace Alice;
public void readonly(params variable items)
{
    //...
}
```

|引数| |
|-|-|
|`items`|ブロック内で読み取り専用にする変数。これは複数個指定できます。|

???note "対応: Alice3.0以降"
    |対応||
    |---|---|
    |AliceScript|3.0|
    |AliceSister|3.0|
    |Losetta|0.10|

### 説明
`readonly`文は、指定した変数を読み取り専用に設定した後、このブロックを実行し、実行完了後に変数の読み取り可否を元に戻します。"読み取り専用"とは、再代入が行えないことのみを保証します。変数の値がイミュータブルでない場合、このブロック内で変数の値が書き変わる可能性があります。

また、このブロック内で変数が使用されている場合は、同じタイミングで別のタスクから変数に再代入することはできません。複数のスレッドでアクセスする可能性のある変数は、はじめに[lock文](./lock.md)で変数をスレッドにロックしてから`readonly`文を使用してください。

### 例
次の例では、`x`を読み取り専用に設定しています。

```cs title="AliceScript"
number x = 0;

readonly(x)
{
    x++;//ここでエラー
}
```
