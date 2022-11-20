---
title: WSOFTScriptからの移行
summary: この記事では、AliceScriptによる開発と従来のWSOFTScriptによる開発の類似点と相違点について説明します。
date : 2021-12-25
author : Taiseiue
author_url : https://github.com/taiseiue
---

!!! warning
    WSOFTScriptバージョン2020LTS及び0.07R4以降、新たなバージョンのWSOFTScriptの開発は行われません。WSOFTは、2022年6月18日に、全てのWSOFTScriptおよびWSOFTScript.XならびにWSOFTScript.Pocketの各バージョンのサポートを終了します。

今後のWSOFTScriptのサポートについては[WSOFTScriptのライフサイクル](../../script/lifecycle)を参照してください。

この記事では、AliceScriptによる開発に関心があるWSOFTScript開発者を対象に、WSOFTScriptとAliceScriptの開発の違いを解説しています。 WSOFTScriptについて詳しく知るには[WSOFTScriptのサイト](../../script)を参照してください。

### はじめに
AliceScriptが登場するまで、簡易的なコンソールアプリケーションとShangri-laによるデスクトップアプリケーションの開発は、WSOFTScriptを用いて行われて来ました。まず第一に、WSOFTScriptのメインライブラリは複雑で、サイズも大きなものでした。また、組み込みの例外処理やデバッグ支援機能はまだ未成熟で、信頼性の高いアプリケーションを開発するには脆弱でもありました。

AliceScriptが登場し、従来のWSOFTScriptはAliceScriptへと進化しました。AliceScriptのさまざまな改良により、ライブラリは小さくまとまり、組み込みの例外処理やデバッグ支援機能も実装され、信頼性の高いアプリケーションを開発することができるようになりました。しかしその一方で、WSOFTScriptに実装されていた一部の機能は実装されていなかったり、多くの組み込み機能を使用するためにAlice.Runtime.dllが必要になるなど、設計思想に起因するいくつかの根本的な違いも残っています。

この記事では、まず最初にAliceScriptで開発を始めるために必要な作業を確認します。(すでにAliceScriptを使用している場合はこのセクションを飛ばしても構いません)。次に、AliceScriptを使って簡単なコンソールアプリケーションを例として作成し、WSOFTScriptとAliceScriptの機能の類似点や相違点を実際に見てみます。

### AliceScriptを使用するための準備
AliceScriptを使用したアプリケーションの開発についての説明の前に、まず、AliceScriptを実行できるコンピュータを用意する必要があります。.NETCore3.1がインストールされているコンピュータが必要です。そのようなコンピュータを用意できない場合は、WSOFTScriptと同じ要件で操作するAliceSisterを使用する必要があります。AliceSisterはAliceScriptとほぼ同じ動作をするAliceScriptの別の実装です。

自分のコンピュータでAliceScriptを実行する場合は、次のソフトウェアをインストールする必要があります。

- .NETCore v3.1以上
- AliceScript
- .NETCoreのインストールについては、Microsoftの公式ガイドを参照してください。

[Windowsに.NETをインストールする](https://docs.microsoft.com/ja-jp/dotnet/core/install/windows?tabs=net50%7CWindows%E3%81%AB.NET%E3%82%92%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E3%81%99%E3%82%8B)
.NETCoreに加えて、AliceScriptもコンピュータにインストールする必要があります。するには、[AliceScriptのダウンロード](../download)を参照してください。

### 初めてのAliceScriptアプリケーションの作成
AliceScriptアプリケーションは、WSOFTScriptアプリケーションと同じように、任意のテキストエディタで作成できます。

それでは早速、簡単なコンソールアプリケーションをAliceScriptで作成して、AliceScriptアプリケーションの作成方法のWSOFTScriptとの違いについて実際に見てみましょう。任意のテキストエディタで次のコードを入力してください。

```js title="main.alice"
print(“Hello,World!”);
```

ファイルを保存したら、次のコマンドを入力して実行します。

```shell title="コマンドライン"
alice -r {ファイル名}
```

Hello,World!と表示されれば成功です。

ここまでの作業を通じて、AliceScriptとWSOFTScriptとの大きな違いは見当たりません。これは、Print関数がWSOFTScriptと同じようにAliceScriptに組み込まれているからです。しかし、ファイル操作や正規表現など、WSOFTScriptには組みこまれていたがAliceScriptには組み込まれていない関数を使用する場合に注意が必要です。

AliceScriptのライブラリには、AliceScript.dllに加えて、Alice.Runitime.dllがあります。これは、AliceScript.dllと同じディレクトリに配置されているときにデフォルトで読み込まれる、AliceScriptのライブラリ群です。ここに、ファイル操作などのよく使う関数やクラスが実装されています。Alice.Runtimeに実装されている関数のうち、名前空間がAlice(名前空間)でないものは関数の使用前に次のようなコードが必要です。

```js title="main.alice"
import “{読み込みたい名前空間の名前}”;
```

次の例では、まずWSOFTScriptを使用してHello,Worldをテキストファイルに書き込みます。

```js title="write_helloworkd.wss"
file_write_text(“test.txt”,”Hello,World”);
```

このコードと同じ動作をするAliceScriptのコードは以下の通りです。

```js title="write_helloworkd.alice"
import “Alice.IO”;
file_write_text(“test.txt”,”Hello,World”);
```

注目すべき唯一の違いは、関数の呼出前にImport関数が呼び出されていることです。importは、Alice.IO名前空間からファイルやディレクトリの入出力についての関数群を読み込むことを事前に宣言します。これが、WSOFTScriptでも関数表現import("WSOFTScript.Shangrila");や、フラグ表現[Import:”WSOFTScript.Shangrila”]と決定的に異なる点は、importがファイルを読み込むのではなく、すでに読み込まれたライブラリから名前空間を使用可能なように読み込む点です。

### 関数とフラグ
ところで、AliceScriptにはWSOFTScriptに実装されているようなフラグ機能はありません。インタプリタに事前に報告すべき情報がある場合は、Alice.Interpreter名前空間にある関数を呼び出して代用します。例えば、次のフラグの機能を、AliceScriptで表現することを考えます。

```js title="load.wss"
import “Alice.IO”;
[DllImport:”Library.dll”]
```

このフラグは、AliceScriptで特定の.NETライブラリを読み込むフラグです。これをAliceScriptで表現するには次のコードに置き換えます。

```js title="load.alice"
import “Alice.IO”;
Dllimport(“Library.dll”);
```

また、標準出力から発生する出力を抑制したいとき、WSOFTScriptではCanPrintフラグを使用していました。これと同じように動作するコードをAliceScriptで表現すると、次のようになります。

```js title="disable_output.alice"
import “Alice.Interpreter”;
Interpreter_AllowOutput(false);
```

さらに、AliceScriptの関数には、オーバーライドという概念が導入されています。この概念によって原則同じ関数を複数回定義することはできません。同じ関数を複数回定義されることが予想される場合は事前に`virtual`属性を付与することを検討してください。また、属性の付与された関数を上書きする場合には、`override`属性を付与します。次に例を示します。

```js title="override_sample.alice"
function virtual Func()
    {
        print(“Hello”);
    }
Func();//出力:Hello
function override Func()
    {
        print(“World”);
    }
Func();//出力:World
```

また、AliceScriptの関数は可変長個の引数を受け取ることができる、`parms`パラメータをサポートしています。これは、その関数に幾つでも引数を渡すことが可能であることを表しています。次に例を示します。

```js title="override_sample.alice"
function Func(parms args)
    {
        print(args);
    }
Func(“A”,”B”,”C”);//出力:[“A”,”B”,”C”]
```

この時、`args`は自動的に配列型になります。引数は省略することもできます。 関数について詳しくは、関数も参照してください。

### 変数
変数に関する重要な変更についても注意が必要です。まず、WSOFTScriptとは違い、AliceScriptでは、未定義の変数を宣言するときにvarキーワードが必須になりました。また、一度宣言された変数にvarキーワードを使うことはできません。

スコープは、その変数が有効な範囲です。WSOFTScriptでは、すべての変数はグローバル変数として定義されていました。AliceScriptでは、通常の変数(これをローカル変数と呼ぶことにします)は、そのスコープとそれ以下のスコープの範囲に限られます。AliceScriptでグローバル変数を宣言するには、varキーワードの後にglobal修飾子をつけます。次に例を示します。

```js title="define_variable.alice"
var global abc = “ABC”;
```

定数は、AliceScriptで導入された新しい機能です。定数は、一度のみ宣言でき、一度定義するとそれに再度代入することはできません。宣言するにはvarキーワードの代わりにconstキーワードを使用します。定数にもやはりローカル定数とグローバル定数が存在します。次の例では、ローカル定数lconstとgconstをそれぞれ定義します。

```js title="define_const.alice"
const lconst a = 1;
const global gconst b = 2;
```

変数について詳しく知るには、変数を参照してください。

### 繰り返し構造の違い
AliceScriptでは、WSOFTScriptとは異なり完全なfor文とforeach文の分離が図られました。AliceScriptでは配列から一つ一つ取り出して実行するためにfor文を使用することはできません。また、foreach(item as array)や、foreach(item : array)の形は使用できなくなりました。foreach(item in array)を使用することを検討してください。また、array.Foreach(delegate(item));の形も使用できます。次の例を参照してください。

```js title="sample_loop.alice"
var ary = [“a”,”b”,”c”];
ary.Foreach((item)=>
 {
    print(item);
 });
 //出力:a
 //    b
 //    c
```

また、AliceScriptでは終了条件までループするuntil文は廃止されました。しかし、while(!bool)で代用することができます。

### 型の違い
AliceScriptではWSOFTScriptからいくつかの型が追加または変更されました。次にそれらの型を示します。

#### Bool型
WSOFTScriptではif文やwhile文のように条件をとるステートメントには、number型の0を偽とし、非0を真としていました。trueやfalseキーワードはそれぞれ1や0を返していました。 AliceScriptでは、真または偽のいずれかを表現することのできるbool型が導入され、bool型を厳格に求めるような場面が頻繁にあります。これは、比較式が必要な場面で代入式も使用できてしまい、混乱を招く恐れがあったためです。 AliceScriptでは、trueやfalseキーワードはそれぞれbool型のtrueやfalseを返します。次に例を示します。

```js title="sample_condition.alice"
var condition = (1 == 1);
print(condition.type);//出力例:BOOLEAN
```

#### Type型
AliceScriptには変数の型を表現するtype型が存在します。全ての変数はTypeプロパティを実装していて、その変数の型を表す値を取得することができます。これはWSOFTScriptのTypeプロパティに似ています。しかし、WSOFTScriptのTypeプロパティはtype型ではなくstring型でその値を表す文字列表現を返します。string、number、boolキーワードなどはそれぞれの型の値を表す定数です。また、型変換演算子asを使用することでその型に変数を明示的に変換することができます。次に例を示します。
```js title="sample_type.alice"
var num = 123;
print(num.type);//出力例:NUMBER
var str = (num as string);
print(str.type);//出力例:STRING
```