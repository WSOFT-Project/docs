---
title : Nightyビルドの変更履歴
summary : この記事は、Nightyビルドのビルド履歴を示します。
date : 2021-12-23
order : 1
---

AliceScriptGMまでのバージョンの開発は、Nightyビルドとして一部のメンバーなどに配布されていました。Nightyビルドのビルド番号はビルドした月日を表しています。ビルド番号の月日はすべて2021年中のものです。

この記事では、AliceScriptのNightyビルドのビルド履歴をしめします。

## AliceScript RC1まで
### AliceScript925の変更点

- 配列からひとつずつ取り出して処理するforeach文が導入されました。
- for文で配列を扱うことはできなくなりました。代わりにforeach文を使用することを検討してください。
- foreach(var : ary)またはforeach(var of ary)の形は使用できなくなりました。同じ方法をとるとき、複数の方法が存在するのは好ましくありません。代わりにforeach(var in ary)の形を使用することを検討してください。
- 一部の例外の文言表現を改良しました。
- 例外が発生しているにもかかわらず実行され続ける可能性のあるバグを修正しました。
- 否定条件ループuntil(NWhile)文は実装されなくなりました。否定条件のループはwhile(!条件)文を使用することを検討してください。
- Print関数は引数を持つ必要がなくなりました。
- データやバイト配列を表すBYTE_ARRAY型は'BYTES'型に改称されました。
- BYTES型はSTRING型に一方的に暗黙的に変換できるようになりました。
- 日付や時刻を表すDateTime型は削除されました。
- 'math'は予約語から削除されました.
- ARRAY、BOOLEAN、BYTES、NUMBER、STRING型は型名(変換元)で変換できるようになりました。
- ObjectBaseの第四引数はParsingScriptに変更され、戻り値を返す必要があるように変更されました。
- ObjectBaseで独自の演算子を用いた演算が完全に実装されました。
- ARRAY型で+=、-=演算子を使用して配列内の項目を加減できるようになりました。
- 三項条件演算子(condition ? true : false)を実装しました。

#### Alice.Runtime925の変更点
- directory_currentdirectoryはスクリプトのカレントディレクトリを返すようになりました。
- 渡された数が素数かどうか判定するmath_isprime関数が実装されました。
- Regex名前空間が実装されました。

### AliceScript926の変更点

- 配列に対して複合加算演算子(`+=`)および複合減算演算子(`-=`)を使用して配列の結合または要素の加減ができるようになりました。
- DELEGATE型が複数の要素を持つことに対応しました。
- DELEGATE型にLengthプロパティが追加されました。
- DELEGATE型同士ののみ、+、+=、-、-=演算子を使用して要素の加減ができるようになりました。
- DELEGATE型の定義のアロー演算子'=>'は使用できなくなりましたが、実装は残されています。
- EventオブジェクトはAliceScript1003までに削除されることが決まりました。複数の要素を持つことができるようになったDELEGATE型を使用することを検討してください。

### AliceScript1001の変更点

- 配列のほかに、デリゲート、文字列に対しても配列添え字演算子を使用することができるようになりました。

### AliceScript1002の変更点

- Eventオブジェクトの実装は削除されました。複数の要素を持つことができるようになったDELEGATE型を使用することを検討してください。
- ObjectBase型クラスでイベントの代用にデリゲートが使用可能になりました。
- Translationクラスは削除されました。
- Null合体演算子'??'が実装されました。

### Alicescript1003の変更点

- 一部例外の表現を変更しました。
- throw関数でThrowErrorイベントを発生させることができるようになりました。
- 関数にvirtual属性、override属性を実装しました。
- function関数でvirtual、override属性を定義可能になりました。
- すでに定義されている関数がvirtualまたはoverride属性を持っていない限り、オーバーライド不可能になりました。

以上で、AliceScriptRC1への機能追加を終了します。変更はAliceSisterにマージされます。

## AliceScript RC2まで
### AliceScript1023の変更点

- if文およびDelegate文で可変長個の引数を指定できるparmsパラメーターの導入
- 複合書式指定で{0:x}のような記法をサポート
- 複合書式指定を用いて文字列を成形するstring_format関数の実装

### AliceScript1031の変更点

- 任意の間処理を中断できるdelay関数を実装
- デバッグ出力を実装
- 最小限の実装のみを持つAlice.ConsoleHostの追加

### AliceScript1101の変更点

- 改行なしで出力に書き込むwrite関数を再度実装

### AliceScript1103の変更点

- 例外表現の追加および改定

### AliceScript1106の変更点

- ほとんどすべての例外を日本語化、エラーコード割り当て
- shellの16進表記を3桁強制に仕様変更

### AliceScript1108の変更点

- string.Splitを引数なしで文字分割モード実装
- number.Negative/PositiveInfinityの実装削除
- べき乗を計算できるmath_pow関数の実装
- プログラムの最適化

### AliceScript1111の変更点

- デバッガーの削除
- Debugクラスの削除
- Undefined、Break、Continueを関数定義から定数定義に変更

### AliceScript1114の変更点

- string.Formatプロパティの追加
- 大部分のプロパティの実装をFunctionBase化
- 一部のプロパティをAlice.Runtimeに移動
- Tokenize関連の関数は削除されました。

### AliceScript1119の変更点

- 変数の型を表すType型の実装
- Convert関数の削除
- それぞれの型を表す定数`string,number,array,object,enum,pointer,delegate,bool,type`の実装
- 与えられた型がもう一方の型と等しいか判定する型一致演算子`is`の実装
- 与えられた値を指定された型に変換して返す型変換演算子`as`の実装

### AliceScript1120の変更点

- Null合体代入演算子`??=`の実装
- Null合体演算子が正しく機能しない場合のある不具合を修正
- '不均等'関連の例外を日本語化

### AliceScript1121の変更点

- 互換性維持の観点から、Number型に対するプロパティおよび関数は実装されなくなりました
- その型の変数を生成するActivate関数の実装
- その変数を指定した型に変換するConvert関数の実装

### AliceScript1122の変更点

- AlicePackage形式の一新
- ScriptにTag、Generationプロパティを追加
- include、dllimport、iceimport関数でパッケージ内のファイルを読み込み可能に

### AliceScript1123の変更点

- AlicePackageにmanifest.xmlが必要になりました
- パッケージエントリポイントを任意に変更可能になりました
- 現在実行中のパッケージを表すAlicePackageObjectおよびそれを取得するGetPackage関数を実装しました

### AliceScript1127の変更点

- AlicePackageでScriptタグが利用可能になりました
- AlicePackageのEntryPointタグは廃止されました。代わりにScriptタグを使用することを検討してください
- AlicePackageに発行者を表すPublisherプロパティが追加されました

### AliceScript1204の変更点

- 型指定修飾子が定義されました
- 関数またはデリゲートで引数の型指定function(type name)が導入されました
- Bool型、Number型間の暗黙的な変換は使用できなくなりました
- String型から数値型への暗黙的な変換は使用できなくなりました
- String演算で値が返却されない不具合を修正
- Nullの定義を拡大
- 定数の使用に丸括弧が必要な不具合を修正、定数を変数と同じように扱うことが可能になりました
- 変数の定義にvarキーワードが必須になりました
- `var`キーワードで定義済みの変数への値の代入ができなくなりました。
- `const`キーワードで定数を定義することができるようになりました

#### Alice.Runtime1204の変更点

- math_Floorが正しく動作しない不具合を修正
- 最大値、最小値を求めるmath_max,math_min関数を実装
- Interpreter_Consts関数が定数の値ではなく名前の一覧を返すように改善
- Path関連の関数実装

以上で、AliceScriptRC2への機能追加を終了します。変更はAliceSisterにも反映されます。

## AliceScript GMまで
### AliceScript1208の変更点

- デリゲートの簡易呼び出しを実装
- 変数/関数のスコープを実装(不完全)
- 親関係を持たないスクリプトが発生する不具合を修正

### AliceScript1210の変更点

- 代入式の右辺のスクリプトが親関係を持たない不具合を修正
- デリゲート型の宣言後に変数探索エラーが発生せず、常に0が返る不具合を修正
- 関数のスコープを実装
- 定数のスコープを実装

### AliceScript1211の変更点

- `0b`から始まる二進表現が10進表現として認識される不具合を修正
- オーバーライドされた関数がバーチャル属性を持たない不具合を修正
- 逐語的文字列リテラル`'`を実装
- 拡張メソッドを実装
- 名前空間のロード先を現在のスコープに変更
- Dllimport時の詳細なエラー検出を実装
- 関数の引数の一時変数に値を代入できない不具合を修正
- for文およびforeach文で値を参照できない不具合を修正

#### Alice.Runtime1211の変更点

- コンソール系関数群をAlice.Console名前空間に移動

### AliceScript1212の変更点

- While文でbreakできない場合がある不具合を修正
- Size,Lengthプロパティをvariable型からarray,delegate,bytes,string型へ変更
- GetPackage関数を削除

#### Alice.Runtime1212の変更点

- array.FindIndexメソッドを削除
- array.Reverseのオーバーロード`array.Reverse(index,count);`の実装
- Interpreter_GetPackage関数を実装
- Interpreter_Name関数を実装

### AliceScript1213の変更点

- 言語構造内でブロックが実行されない不具合を修正
- while文およびdo-while文でbreakを使ってループを抜けることができない不具合を修正

### AliceScript1222の変更点

- ユーザー定義関数を暗黙的にデリゲート型オペランドとして解釈
- AlicePackageにファイル簡易改善検知機能を実装
- 一部例外の表現の改善

#### Alice.Runtime1222の変更点

- ScriptオブジェクトにGetVariable、GetConst、GetFunctionメソッドを実装

### AliceScript1223の変更点

- For文でループを抜けた後、余分にステートメントが実行されてしまう可能性のある不具合を修正
- string.Joinメソッドを追加