---
title: イベント
summary: この記事では、AliceScriptにおけるイベントの実装について説明します
date : 2022-01-28
---
イベントとはプログラム内でなんらかの動作、出来事が発生したことを知ることを目的としたプログラミング手法です。 プログラム内でイベントが発生すると、指定された処理を行うことができます。(例えば「キーが押された」など) AliceScriptのイベントは、デリゲートを用いて実現することができます。次の例ではコンソールにオブジェクトを出力するイベントデリゲートOutputとイベントが発生したときに呼び出されるOnOutput関数を定義し、最後に"Hello,World"を渡してOutputイベントを発生させます。

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