---
title : AliceScript RC2の新機能
summary : この記事では、AliceScript RC2の変更点と新機能について説明します
date : 2021-12-13
order : 2
---
AliceScriptRC2は、RC1に続くAliceScriptの次のテストリリースです。AliceScriptRC2によって、AliceScriptに次の機能と機能強化が追加されています。 最新のAliceScriptADKは[AliceScriptのダウンロード](../download.md)でダウンロードできます。

### 新機能
#### paramsパラメーター
AliceScriptRC2では、paramsパラメーターが導入されています。引数にparamsキーワードを使用すると、可変長個の引数を受け取る引数を指定できます。paramsの型は常にARRAYとなります。 ひとつの関数内では、paramsキーワードより後に引数を指定することができません。次に例を示します。

```cs title="AliceScript"
function PrintAllArgs(params args)
 {
   foreach(arg in args)
   {
     print(arg);
   }
 }
PrintAllArgs("Hello","World");
//出力:["Hello","World"]
```

#### 引数の型指定
引数の型指定では、ユーザ定義関数の引数に型を指定することができるようになりました。引数にstringなどの型指定修飾子を指定すると、その型のみを引数として受け入れることができるようになり、予期しない型による呼び出しを防ぐことができます。次に例を示します。

```cs title="AliceScript"
function Add(number a,number b)
{
   return a+b;
}
Add(1,2);//戻り値:3
Add("1","2");//例外発生
```

#### デリゲートの簡易呼び出し
デリゲートの簡易呼び出しは、デリゲート型が変数に登録されている場合にInvokeメソッドを呼び出さずに変数名(引数);の形で呼び出しできるようにします。次に例を示します。

```cs title="AliceScript"
var SayHello = delegate()
 {
   print("Hello,World");
 }
SayHello();//出力例:Hello,World
SayHello.Invoke();//出力例:Hello,World
```

#### ユーザ定義定数
ユーザ定義定数では、constキーワードを使ってその値が一度のみ定義され変更することができない定数を宣言できます。次に例を示します。

```cs title="AliceScript"
const Message="Hello,World";
print(Message);//出力例:Hello,World
Message="Bonjur";//例外発生
```

#### デバッグ出力
デバッグ出力によって、コードのデバッグのための新しい出力が提供されます。今まで、デバッグのためにprintを用いて出力していたものをdebug_printで代用できます。これらの関数はAlice.Interpreter名前空間にあります。たとえば、次の例では、デバッグ用の出力と標準出力に別な内容が出力されます。

```cs title="AliceScript"
import "Alice.Interpreter";
print("Hello,Standard");
debug_print("Hello,Debug");
//標準出力:Hello,Standard
//デバッグ出力:Hello,Debug
```

#### 例外のエラーコード
例外のエラーコードによって、発生した例外に対して一貫してより高度な情報を得ることができるようになります。完全な日本語でのエラー出力によって発生した例外がプログラマだけでなくユーザにも親しみやすくなります。 例外のエラーコード、メッセージ、発生条件などについて詳しく知るには[例外](../general/exception.md)を参照してください。

#### Type型/型比較演算子
type型によって、変数の型に対する新たなアプローチが提供されます。全ての変数はTypeプロパティを実装していて、その変数の型を表す値を取得することができます。string、number、boolキーワードなどはそれぞれの型の値を表す定数です。また、型一致演算子isを使用することでその型に変数が指定された型かどうかを判断できます。次に例を示します。

```cs title="AliceScript"
var num = 123;
print(num.type);//出力例:NUMBER
var condition = (num is number);
print(condition);//出力例:True
```

#### 暗黙的な変換の廃止/型変換演算子
まず、従来のAliceScriptに搭載されていた暗黙的な型変換は廃止されました。String型への変換を除くすべての型を変換するには、型変換演算子またはConvert関数が必要です。型変換演算子asを使用することでその型に変数を明示的に変換することができます。次に例を示します。

```cs title="AliceScript"
var num = 123;
print(num.type);//出力例:NUMBER
var str = (num as string);
print(str.type);//出力例:STRING
```

#### Activate関数/Convert関数
type.activate関数は、その変数の表す型の変数を新規に作成し返します。variable.convert(type)関数はその変数を指定された型に変換します。次に例を示します。

```cs title="AliceScript"
var num = number.Activate();
print(num.type);//出力例:NUMBER
var str = num.Convert(string);
print(str.Type);//出力例:STRING
```

#### Null合体演算子
Null合体演算子は、その変数がnullでない場合、その変数がそのまま返されます。それ以外の場合は、右側のオペランドが評価され、その結果が返されます。 また、その変数がnullである場合にのみ、右側のオペランドの値を左側の変数に割り当てるNull合体割当演算子??=も使用できます。次に例を示します。

```cs title="AliceScript"
var a = null;
a ??= 5;
print(a);//出力例:5
a ??= 3;
print(a);//出力例:5
```

#### AlicePackage
AlicePackageによって、スクリプトファイルやリソース、ライブラリを一つにまとめて公開することが可能になりました。詳細については[AlicePackage](../general/alice-package.md)を参照してください。

### パフォーマンス
WSOFTScriptとのデバッグ互換性維持のために残されていたWSOFTScriptデバッガは、AliceScriptRC2から実装されなくなりました。また、&&と||演算子について演算のショートカットが導入され、左辺の評価状況によって右辺を評価すべきか考慮し、不要である場合は評価されなくなりました。従来のような動作が必要な場合には代わりに&演算子や、|演算子を利用できます。 これらの改善により、一部のシナリオでパフォーマンスを向上させることができます。