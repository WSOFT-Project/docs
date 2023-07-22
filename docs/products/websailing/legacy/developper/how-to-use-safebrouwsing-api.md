---
title : プラグインからSafeBrowsingAPIを呼び出す
summary : この記事では、WSPluginからSafeBrowsingAPIを呼び出す方法について説明します。
date : 2020-02-16
---
### 想定されるシナリオ
ユーザーからの入力を受取るプラグインを開発するとき、WSPluginからSafeBrowsingAPIを呼び出してUrlの安全性を評価したいときがあります。その場合、現在のブラウザインスタンスに`SafeBrowsing`を`SendMessage`することで、Urlが安全なものであるかを評価することができます。

### 使用法
WSPluginBase内の任意の場所で、次のように記述します。

```cs title="Plugin.cs"
bool isSafety = (bool)this.Host?.Plugin.SendMessage(this,"SafeBrowsing","<評価するUrl>");
```
