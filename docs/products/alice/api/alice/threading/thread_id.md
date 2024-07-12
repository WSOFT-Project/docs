---
title: thread_id
summary: 現在のマネージド スレッドの一意の識別子を取得します。
mt_type: function
mt_title: thread_id()
---

### 定義
名前空間: Alice.Threading<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Threading.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Alice.Threading.cs)

#### thread_id()

現在のマネージド スレッドの一意の識別子を取得します。

```cs title="AliceScript"
namespace Alice.Net;
public number thread_id();
```

|戻り値| |
|-|-|
|`number`|このマネージド スレッドの一意の識別子を表す整数。|

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 注意
スレッドの ManagedThreadId プロパティ値は、プロセス内でそのスレッドを一意に識別するために機能します。

ManagedThreadId共通言語ランタイムをホストするアンマネージコードでは、スレッドがファイバーとして実装されている場合でも、プロパティの値は時間の経過と共に変化しません。

### 例
次の例では、現在のマネージド スレッドの一意の識別子を取得します。

```cs title="AliceScript"
using Alice.Threading;

thread_id();
```