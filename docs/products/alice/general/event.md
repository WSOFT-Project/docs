---
title: イベント
summary: この記事では、AliceScriptにおけるイベントの実装について説明します
date : 2022-01-28
---

AliceScriptでのイベントは、[デリゲート](../api/delegate/index.md)を使用して実現できます。この記事では、デリゲートを使用してイベントドリブン型プログラミングを行う方法について説明します。

### イベント
イベントとは、何らかのアクションの発生を知らせるために、プログラムによって送信されるメッセージです。このときのアクションとは、ユーザーによるボタンのクリックなどの対話型操作を行った場合や関数の実行など、なんらかのプログラムロジックによって発生します。

次の例ではコンソールにオブジェクトを出力するイベントデリゲートOutputとイベントが発生したときに呼び出されるOnOutput関数を定義し、最後に"Hello,World"を渡してOutputイベントを発生させます。

```cs title="AliceScript"
var Output = delegate.Activate();
function OnOutput(v)
  {
      print(v);
  }
Output += OnOutput;

Output("Hello,World");//出力例:Hello,World
```

もちろん、イベントの購読にデリゲートを使うこともできます。上の例をラムダ式を使ってより簡潔に記述すると次のようになります。

```cs title="AliceScript"
var Output = new Delegate();
Output += v => print(v);

Output("Hello,World");//出力例:Hello,World
```