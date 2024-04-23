---
title: thread_id
summary: 現在のマネージド スレッドの一意の識別子を取得します。
---
### 定義
名前空間:Alice.Threading / アセンブリ : Losetta.Runtime.dll / サポート: AliceScript1

属性: 関数

現在のマネージド スレッドの一意の識別子を取得します。

```cs title="AliceScript"
namespace Alice.Net;
public number thread_id();
```

|戻り値| |
|-|-|
|`number`|このマネージド スレッドの一意の識別子を表す整数。|

### 注意
スレッドの ManagedThreadId プロパティ値は、プロセス内でそのスレッドを一意に識別するために機能します。

ManagedThreadId共通言語ランタイムをホストするアンマネージコードでは、スレッドがファイバーとして実装されている場合でも、プロパティの値は時間の経過と共に変化しません。

### 例
次の例では、現在のマネージド スレッドの一意の識別子を取得します。

```cs title="AliceScript"
using Alice.Threading;

thread_id();
```