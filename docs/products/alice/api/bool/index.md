---
title: bool
summary: bool型は、ブール値の論理数を表します
---
### 定義
名前空間: Alice<br/>
アセンブリ: Losetta.dll

bool型は、ブール値の論理数を表します。bool型は論理、比較、等値演算子をサポートしています。

bool型の有効な値は`true`か`false`のいずれかです。 それぞれの値を表す定数がそれぞれ、true、falseとして定義されています。
この型の型指定修飾子はboolです。

```cs title="AliceScript"
namespace Alice;
public class bool;
```

???note "対応: AliceScript RC1以降"
    |対応||
    |---|---|
    |AliceScript|RC1、RC2、GM、2.0、2.1、2.2、2.3、3.0|
    |AliceSister|GM、2.0、2.1、2.2、2.3、3.0|
    |Losetta|0.8、0.9、0.10|

### 説明
bool型は、真偽値（trueまたはfalseのいずれか）を表します。bool型は、比較演算子と等値演算子の結果の型です。bool型をとるステートメント(ifやwhileなど)と三項条件演算子で条件を表す値として使用できます。

bool型の既定値はfalseです。

#### リテラル
AliceScriptではトップレベルスクリプトでtrueおよびfalseが定数として定義されています。これを使用して、bool型を初期化できます。

#### 比較
bool型は、trueかfalseのどちらかをとるため、他の型にあるような比較は必要ありません。次の例のどちらでも、コードの意味は同じです。

```cs title="AliceScript"
bool condition = true;

if(condition)
{
    //...
}

if(condition == true)
{
    //...
}
```

#### 3値ロジック
3値ロジックを使用する必要がある場合はnull許容bool型を使用することで、true,false,nullの3値を使用できます。次に例を示します。

```cs title="AliceScript"
bool? condition = null;

if(condition == true)
{
    // trueの場合
}
else if(condition == false)
{
    // falseの場合
}
else if(condition == null)
{
    // nullの場合
}
```

`null`許容Bool型を[if文](../alice/if.md)でそのまま使用することはできません。必ず[variable?.Value](../variable/value.md)を経由して値を取得してください。

#### 変換
bool型への暗黙的な変換は存在しません。特に、WSOFTScriptとは異なり数値型の代わりに値を使用することはできません。また、文字列型、数値型、bytes型からの明示的変換がサポートされます。
