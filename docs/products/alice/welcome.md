---
title: AliceScriptのツアー
summary: AliceScriptとAliceProjectへようこそ
date : 2021-12-25
---
### はじめに
AliceScript(アリススクリプトと読みます)は、軽量な.NETエコシステム上で動作するインタプリンタ型のプログラミング言語です。
AliceScriptを使用すると簡単にアプリケーションを構築することができます。
AliceScriptはC#やPythonをルーツとしているため、C、C#、JavaScript、Pyhton、PHPのプログラマーであればすぐに使いこなすことができます。

AliceScriptには、簡単に高度なアプリケーションを作成するのに役立つ機能がいくつかあります。"ガページコレクション"には到達できず、使用されていないオブジェクトによって占有されたメモリを自動的に回収することができる機能があります。
"デリゲート"には自他のオブジェクトに対して簡単に連絡を取ることができる機能があります。"例外処理"には、エラーの検出と復旧を行うためのアプローチが用意されています。
AliceScriptは"統合型システム"を備えていますから、numberやstringなどの型を含めたすべての型はルートとなる一つのVariable型から派生しています。すべての型は、一般的な操作のセットを共有していますから、すべての型を一貫した方法で操作することができます。

### AliceScriptのアーキテクチャ
AliceScriptプログラムは、[AliceModel](../saim)で動作します。AliceScript.dllはWSOFTによる.NETCore上で動作するAliceModelの実装です。

その他の公式による[AliceModel](../saim)の実装として.NETFramework上で動作する[AliceSister](../alicesister)があります。

AliceScriptで記述されたプログラムはAliceModelの実装によって動的に解析され、実行されます。

[AliceModel](../saim)には、AliceScriptを実行できるインタプリタであるAlice.Interpreter以外にも、Alice.Runtimeが用意されています。このライブラリには、ファイルの入出力、XML 解析のための文字列操作、インターネットへの接続、役に立つさまざまな機能を備えた名前空間があります。
Alice.Interpreterはさまざまなライブラリやファイルをプログラムに統合し、使用可能にする役割を担っています。

### Hello,World
"Hello, World" は、プログラミング言語を紹介するために伝統的に使用されているプログラムです。 これをAliceScriptで記述すると次のようになります。

```js title="main.alice"
print("Hello,World");
```

プログラムの出力は、AliceScript.dllの[Print](../api/print)メソッドによって出力されます。

AliceScriptを使用する上で最も優れている点は、初心者に対しては非常に分かり易いと同時に、プロフェッショナルのプログラマに対しては多くの進んだ機能を提供している点です。AliceScriptの機能を羅列した長い一覧表を読まなければならないのかと心配する必要はありません。AliceScriptはすぐに始められますし、数時間の内に簡単なスクリプトが書けるようになります。

### 変数と型
様々な変数はその型によってその変数の持つ値や動作が決定されます。

AliceScriptの型には数値を表す<code>number</code>型、Unicode文字列を表す<code>string</code>型、ブール値を表す<code>bool</code>型、バイト配列を表す<code>bytes</code>型、任意の型による変数を持つ配列を表す<code>array</code>型、空の変数であることを表す<code>none</code>型、列挙型<code>enum E{…}</code>、デリゲート型<code>delegate(…){…}</code>、ユーザー定義によるクラスを表す<code>object</code>型、変数の型を表す<code>type</code>型があります。

型システムについて詳しく知るには変数の型の記事を参照してください。

### デプロイモデル
AliceScriptアプリは、次の2つの異なる形式で公開できます。

* [AlicePackage](../alice-package) アプリケーションをアリスパッケージとして公開すると、プログラムのソースコード、ライブラリ、パッケージやリソースファイルを含むAlicePackage(*.ice)ファイルが生成されます。生成されたAlicePackageファイルを配布することで、AliceScriptが導入されている環境に迅速に展開できます。

### AliceScriptにできることは？
AliceScriptが使用される場所は主に3つあります。

* Windowsデスクトップアプリケーションの作成。これは最も初期の段階から存在し、AliceScriptの中心となる分野です。ここでAliceScriptを動作させるためには3つのものが必要です。AliceScriptインタプリンタ、.NETCoreまたは.NETFramework、そしてそれが動作するコンピュータです。これらは[初めてのAliceScript](../begining-alice)に詳しい説明があります。

* コマンドラインでのスクリプティング。AliceScriptは多くのオペレーティングシステムに搭載されている端末のように対話的に実行することができます（これはREPLといいます）。このタイプはタスクスケジューラを使用して一定間隔で スクリプトを実行したい場合や、ちょっとした文書処理を行うのに最適な方法です。

* 既存のアプリケーションの組み込みスクリプティング。AliceScriptはC#から簡単に呼び出すことができるため、既存のアプリケーションに拡張性を持たせることができます。

お分かりの通り、このページではAliceScriptの機能やAliceScriptを使用することの利点を全て紹介することは出来ません。
このサイトのおまかせ表示を使ってみてください。あなたの知らないAliceScriptに出会うことができるかもしれません。