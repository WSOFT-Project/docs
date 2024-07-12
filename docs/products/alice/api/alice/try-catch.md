---
title: try-catch
long_title : try-catch 文
summary: ブロック内で発生した例外を処理します。
date : 2024-05-07
mt_type: function
---

### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.Runtime.dll<br/>
ソースコード: [Alice.Core.Flow.cs](https://github.com/WSOFT-Project/Losetta/blob/master/Losetta.Runtime/Core/Alice.Core.Flow.cs)

ブロック内で発生した例外を処理します。

```cs title="AliceScript"
namespace Alice;
public void try
{
    //例外が発生する可能性のある処理
}
catch
{
    //例外が発生した場合の処理
}
finally
{
    //例外が発生してもしなくても最後に処理される処理
}
```


???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 基本
`try-catch`文は、ブロック内で例外が発生したときに文の外側に例外を伝搬させず、`catch`ブロックまたは`finally`ブロックを実行します。
`try-catch`文で、`try`ブロックは必須ですが、`catch`ブロックと`finally`ブロックはどちらか片方だけでも使用できます。次の例では、`try`ブロック内で例外を発生させています。

```cs title="AliceScript"
try
{
    throw 0x00;
}
catch
{
    print("例外が発生しました");
}

//出力:例外が発生しました
```

#### 例外情報の受け取り
`catch`ブロックでは、`catch(受け取る変数名)`のように記述することで例外情報を持つ[Exception](./exception/index.md)オブジェクトを受け取れます。次の例では、`try`ブロック内で発生した例外のメッセージを表示しています。

```cs title="AliceScript"
try
{
    throw "この例外はテストです";
}
catch(var e)
{
    print(e.Message);
}

//出力:この例外はテストです
```

#### 条件付きcatch
`catch`ブロックには条件を設定でき、条件に合う例外だけを捕捉できます。
また、`catch`ブロックは複数個かけます。どの条件にも一致しなかった例外はブロックの外側に伝搬します。
次に例を示します。

```cs title="AliceScript"
try
{
   //...
}
catch(var e) when(e.ErrorCode == 0x1b)//エラーコードが0x1bの時に実行される
{
    print("ファイルが存在しません");
}
catch(var e)
{
    print("その他の例外が発生しました");
}
```
