---
title: AliceScriptのツアー
summary: AliceScriptとAliceProjectへようこそ
date : 2021-07-24
---

### はじめに
現在市販のソフトやゲームの開発現場で、もっとも広く使われている言語はC#とJavaでしょう。
これらの言語ではクロスプラットフォーム上で動作し、GUIプログラムを作成するライブラリが標準で用意されているうえ、有名なエディターによる強力な開発支援機能があります。
これらの言語はオブジェクト指向プログラミング(OOP)というプログラミングパラダイムのもと設計されていて、保守性や読みやすさの点で非常に優れており、大規模な開発に向いています。

しかし、これらの言語は開発に事実上IDEやコンパイラなどの別途導入が必要であったり、簡単な用途(たとえば、テキストの行数を数えるなど)のソフトウェアを開発するにも比較的記述量が必要だという欠点があります。このため、C#やJavaを使用してアプリケーションを開発するには、JavaScriptなどの言語を使用して同じものを作る作業と比較して、開発期間が長くなります。

また、JavaScriptやVBScriptなどは、少ない記述量で開発が可能ですが、できることに限りがあります。今となってはNode.jsなどもありますが、それを動作させるためにはランタイムをインストールするなど、複雑なセットアップが必要になります。

私は中学生のころパソコン部に所属していましたが、プログラミングを行えるようなソフトは導入されていませんでした。GIGAスクール構想の直前の世代のため、個人に貸与されるPCもありませんでしたし、当然学校のコンピューターに追加のソフトウェアをインストールすることはできませんでした。たとえWeb版のScratchで開発したとしても、簡単なゲームを開発することくらいしかできません。なにより、実用的なソフトの開発をしてみたかったのです。

そのために私は、実行ファイルひとつで開発や実行が可能な、[WSOFTScript](../script/index.md)を開発し、使っていました。高校生となった今から考えると、言語の設計や実装方法に多くの問題点があり、とても実用に耐えるものではありませんが、それでも当時の私としては大発明でした。

そして、WSOFTScriptの基本的な方向性を引き継いだ新しい言語として、AliceScriptを開発しました。

少し前置きが長くなりましたね。

### AliceScriptとは
**AliceScript**(「アリススクリプト」と読みます)は、.NET上で動作する軽量なスクリプト言語です。AliceScriptは他の多くのスクリプト言語と同じような描きやすさを持ち、かつC#などの読みやすさや安全性も備えています。AliceScriptはC言語やC#、Java、JavaScript、PHPを使用したことのあるプログラマーならすぐに使いこなすことができます。

またAliceScriptは、はじめて使用するプログラミング言語としても適しています。
AliceScriptは、C#やJavaScriptの構文を参考に設計しているため、この言語での学びは、他の言語にも活かすことができます。
AliceScriptには他の言語にあるような、`class Program`や`static void Main(string[] args)`のような「おまじない」は必要ありません。
一方で、名前空間や[関数](./general/function.md)を使えば、しっかりと構造化できます。
もし使用したければクラスも使えるようにします。([#97](https://github.com/WSOFT-Project/Losetta/issues/97))

「はじめに」でも述べた通り、AliceScriptを使って開発を行うためにソフトをインストールする必要はありません。[ダウンロード](./download.md)から実行ファイルをダウンロードして、あとはメモ帳などでコードを書くだけです。そういう意味でも、初心者向けの言語といえます。

AliceScriptには、簡単に安全なコードを書くための機能がいくつかあります。
たとえば、変数は基本的にnull非許容なので、`null`を扱う文脈と扱わない文脈を明確に分離できます。また、関数の定義時にはD言語のように事前条件と事後条件を定義できます。ほかにも、[ラムダ式](./api/delegate/index.md)を使えば関数型プログラミングのようなことができますし、`try...catch`を使用すればエラーを簡単に検出したり、対処したりできます。

また、AliceScriptは.NET上で動作しているため、すでに.NET向けに構築された多くの資産を活用できます。[相互運用](./interop/index.md)の機能を使えば、AliceScriptから.NETのオブジェクトを操作したり、ネイティブ関数(Win32API)などを呼び出したりすることで高度なプログラミングもできます。

### Hello,World
"Hello,World"は、非常に基本的なプログラムで、言語の特徴を紹介するためによく使用されます。このプログラムはコンピューターの画面に"Hello,World!"というテキストが表示されます。

AliceScriptでこのプログラムを書くと、以下のようになります。

```cs title="AliceScript"
print("Hello,World!");
```
このプログラムは、AliceScriptに初めから備わっている、[print](./api/alice/print.md)関数を使用して画面にテキストを表示しています。

これを、他の言語とも比較してみましょう。

#### C言語での例
```c title="C言語"
#include <stdio.h>

int main() 
{
    printf("Hello, World!\n");
    return 0;
}
```

#### C#での例
```cs title="C#"
using System;

class Program
{
    static void Main()
    {
        Console.WriteLine("Hello,World!");
    }
}
```

#### JavaScriptでの例
```js title="JavaScript"
console.log('Hello,World!');
```

このように、AliceScriptは他の言語と比較して、少ない記述量で済むように設計されています。

### 変数と型
AliceScriptは、動的型付け言語です。さまざまな変数はその型によってその変数の持つ値や動作が決定されます。

以下に、いくつか変数を定義してみます。

```cs title="AliceScript"
// 文字列型`name`の内容は`Alice`
string name = "Alice";

// 数値型`age`の値は`3`(ありすたんは3歳)
number age = 3;

// varを使えば右辺の値に応じて自動的に型が決まる
var height = 160;
```

以下は、AliceScriptに標準で備わっている型の概要です。

|型名|概要|
|---|---|
|[number](./api/number/index.md)|整数や小数などの実数を表します|
|[bool](./api/bool/index.md)|`true`か`false`のどちらかの値を表します|
|[string](./api/string/index.md)|テキストを表します|
|[bytes](./api/bytes/index.md)|バイナリデータ配列を表します|
|[array](./api/array/index.md)|任意の型で構成される変数のリストを表します|
|[none](./api/none/index.md)|空の値であることを表します|
|[delegate](./api/delegate/index.md)|関数や処理のまとまりを表します|

型システムと変数の使用についての詳細については、[変数](./general/variable.md)の記事を参照してください。

### デプロイモデル
AliceScriptを使って作成したアプリは、次のいずれかの方法で公開できます。
どちらの場合でも、実行する相手にもAliceScriptのランタイムが必要です。

* **スクリプト** アプリケーションをスクリプトとして公開するとテキストファイルを受け渡しするだけでどこでもAliceScriptを実行できます。この方法では、複数のスクリプトや画像、音声などのリソースを埋め込むことはできません。

* [AlicePackage](./general/alice-package.md) アプリケーションをアリスパッケージとして公開すると、プログラムのソースコード、ライブラリ、パッケージやリソースファイルを含むAlicePackage(*.ice)ファイルが生成されます。生成されたAlicePackageファイルを配布することで、AliceScriptが導入されている環境に迅速に展開できます。対応する環境では、それをダブルクリックするだけで実行できます。

### AliceScriptにできることは？
AliceScriptが使用される場所は主に3つあります。

* Windowsデスクトップアプリケーションの作成。これはもっとも初期の段階から存在し、AliceScriptの中心となる分野です。ここでAliceScriptを動作させるためには3つのものが必要です。AliceScriptインタプリタ、.NETCoreまたは.NETFramework、そしてそれが動作するコンピューターです。ちなみに、Losettaを使用すれば、それすら不要です。これらは[初めてのAliceScript](./tutorial/begining-alice.md)に詳しい説明があります。

* **コマンドラインでのスクリプティング** AliceScriptは多くのオペレーティングシステムに搭載されている端末のように対話的に実行できます（これはREPLといいます）。このタイプはタスクスケジューラを使用して一定間隔でスクリプトを実行したい場合や、ちょっとした文書処理を行うのに最適な方法です。

* 既存のアプリケーションの組み込みスクリプティング。AliceScriptは.NET上の言語から簡単に呼び出すことができるため、既存のアプリケーションに拡張性を持たせることができます。


[初めてのAliceScript](./tutorial/begining-alice.md)では、AliceScriptを導入して、はじめてのプログラムを作成するところまで案内します。

また、[AliceScript Web環境](https://try.alice.wsoft.ws/)では、Webブラウザ上で動作するAliceScriptの環境を提供しています。

### AliceScriptの開発方針
もともとAliceScriptは、友人とパソコン部のために開発しており、局所的なニーズを満たすために開発されました。現在も主に使用してくれているのは友人です。しかし、AliceScriptの実装の[NuGetパッケージ](https://www.nuget.org/packages/Losetta)は合計2千回以上ダウンロードしていただいており、一定のニーズを満たすことができればと考えています。

AliceScriptの最終的な目標は、「より多くの人にプログラミングを身近な道具として使ってもらう」ことです。この方針にしたがって、AliceScriptはできるだけ難しさを感じずに済むように糖衣構文を積極的に実装しています。(たとえば、[foreach文](./api/alice/foreach.md)や[文字列補間](./api/string/index.md)など)

AliceScriptは学習用言語に極振りした言語ではありません。学習用言語と実用言語の橋渡しになりたいと考えています。「学習が簡単な代わりに、できることも少ない言語」にはならないようにと考えています。

それでも、AliceScriptは他の言語と比較して覚えなければいけない概念は少ないです。OOPは、大規模開発や限られたリソースを最大限活用することに主眼が置かれており、現代の、小規模開発の実情にそぐわない部分もあります。それと比較してAliceScriptは、関数の概念くらいを習得できればたいていのことができます。

AliceScriptの実装のLosettaは、[GitHubリポジトリ](https://github.com/WSOFT-Project/Losetta/)で公開しています。最新の言語機能を試したい時はフォークしてビルドするか、[Releases](https://github.com/WSOFT-Project/Losetta/releases)からベータ版をダウンロードできます。使ってみて不具合や困ったことがあれば[Issues](https://github.com/WSOFT-Project/Losetta/issues)に投稿していただければ幸いです。新機能の提案をしていただければ、私が泣いて喜びます。