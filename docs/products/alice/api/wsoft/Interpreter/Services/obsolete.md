---
title: obsolete
summary: 関数が非推奨であることを表します。
date : 2024-08-05
mt_type: function
mt_title: obsolete()
mt_summary: 関数が非推奨であることを表します。
mt_title: obsolete(string,bool)
mt_summary: メッセージを指定して、関数が非推奨であることを表します。
draft: true
---

### 定義
名前空間: WSOFT.Interpreter.Services<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Utils.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Alice.Core.Utils.cs)

#### obsolete()

関数が非推奨であることを表します。

```cs title="AliceScript"
namespace WSOFT.Interpreter.Services;
@annotation()
public void obsolete();
```

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||


#### obsolete(string,bool)

メッセージを指定して、関数が非推奨であることを表します。

```cs title="AliceScript"
namespace WSOFT.Interpreter.Services;
@annotation()
public void obsolete(bool isError, string message);
```

|引数|説明|
|---|---|
|`isError`|この関数が呼び出されたとき例外をスローする場合は`true`、デバッグ出力に書き出す場合は`false`|
|`message`|この関数が呼び出されたときに表示するメッセージ|

???note "対応: 未実装"
    |対応||
    |---|---|
    |AliceScript||
    |AliceSister||
    |Losetta||

### 例
次の例では、今後使用して欲しくない関数にマークをつけています。

```cs title="AliceScript"
@obsolete()
void oldFunc()
{
    print("この関数はもう使用しないでください。");
}
```

次に、この関数を呼び出します。出力は、デバッグ出力にされます。

```cs title="AliceScript"
ObsoleteFunction();
//デバッグ出力: FUNCTION_IS_OBSOLETE(0x04f): `oldFunc`は旧形式です。
```
