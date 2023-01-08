---
title : 互換性に影響を与える変更点
summary : この記事では、AliceScriptで採用されているか、検討されている互換性に影響を与える変更点について説明します。
---
AliceScriptの歴史を通じて、AliceScriptのバージョン間および異なる実装間で高いレベルの互換性を維持することに力が注がれてきました。 
Alice2.0（およびSAIM2.0）以降のバージョンは、AliceScriptGMと比較すると新しい技術とみなすことができますが、念のためこの一覧にまとめています。
多くの開発者は、AliceScriptの異なる実装間の互換性とともに、AliceScriptの特定の実装のバージョン間についても高いレベルの互換性を期待します。 特に、以前のバージョンのAliceScript用に書かれたコードは、AliceScriptの新しいバージョンでもシームレスに動作することを期待します。 実際、多くの開発者は、新しくリリースされたAlice.RuntimeにあるAPIが、それらのAPIが導入された初めのバージョンとも互換性があると期待します。

この記事では、AliceScriptまたはAlice.RuntimeまたはAlicePackageに対して行われた変更の詳細と、それがアプリケーションの互換性に与える影響について説明します。変更は<span class="badge bg-success">承認</span>されているか<span class="badge bg-danger">非承認</span>であるか、動作の予測や期待通りの動作の維持が不十分であると判断され、<span class="badge bg-warning text-dark">見送り</span>されているかのいずれかです。

!!! note
    この記事は、AliceScriptの変更履歴として使用できるだけでなく、ライブラリ開発者はこれらの基準を使用して、複数のAliceScript実装やバージョンをターゲットとするライブラリの変更の目安になります。

### Alice2.1での変更
Alice2.1の概要については[AliceScript2.1の新機能](./2-1.md)を参照してください。

#### function_show関数の廃止
<span class="badge bg-success">承認</span>

AliceScript2以前のバージョンでは、ユーザー定義関数の内容を出力する`function_show`関数が`Alice.Interpreter`名前空間に存在していました。

しかし、この関数はほとんど言語のデバッグ目的にしか使用されておらず、かといって今後使用できるケースも想定できないため廃止されました。

#### .NETライブラリの多重起動の容認
<span class="badge bg-success">承認</span>

AliceScript2以前のバージョンでは、同一の.NETライブラリを複数回読み込むと、`LIBRARY_ALREADY_LOADED`例外が発生していました。しかし、.NETライブラリを多重起動してももう影響はないため、この例外はスローされないようになりました。変更は承認されました。

#### ScheduleRun関連関数の廃止
<span class="badge bg-success">承認</span>
`ScheduleRun`関連関数は、WSOFTScriptとの互換性を向上させる目的でAliceScriptに実装されていました。しかし、`ScheduleRun`の機能は、最上位レベルのスクリプトを意図しないタイミングで実行されてしまう可能性があり、セキュリティ上も問題となっていました。AliceScript2.1では、この関数をサポートしないことにより、セキュリティが向上しました。変更は承認されました。

#### 属性定義をキーワード定義へと移行
<span class="badge bg-success">承認</span>

AliceScript2以前のバージョンでは、関数や変数の定義時に`function`や`var`キーワードの後に`global`などの属性キーワードを記述していました。これは、FunctionCreatorやAssignmentFunctionが独自にこの機能を実装していたためです。AliceScript2.1では、前置詞的キーワードをインタプリタレベルでサポートすることで、記述の一貫性を担保できるうえ、キーワードの概念を他の関数でも使用できるようになるため、変更は承認されました。

#### #から始まる行のコメントに対応
<span class="badge bg-success">承認</span>

AliceScript2以前のバージョンでは、`#`から始まるコメントに対応していませんでした。これにより、UNIX環境でのシバンと呼ばれるファイル関連付け機能に対応できませんでした。また、`#`から始まるコメントをサポートすることによって、`ini`ファイルや`conf`ファイルとの互換性が向上します。変更は承認されました。

### Alice2.0での変更
#### import関数の廃止
<span class="badge bg-success">承認</span>

AliceScriptGM以前のバージョンでは、Import関数はすでに展開されている名前空間を読み込むための関数と指摘のしていました。AliceScript2からは、`using`ステートメントが使用できます。この変更はそれぞれの`import`関数を`using`ステートメントに読み替える必要がありますが、変更は承認されました。

### AliceScriptGMでの変更
#### Typeプロパティ
<span class="badge bg-success">承認</span>

AliceScriptRC1以前のバージョンでは、Typeプロパティはその値の型を表す文字列表現を返していました。AliceScriptRC2からはTypeプロパティはtype型を返すため、戻り値の型が変わります。 この変更による影響を緩和するために、type型からstring型への一方向の暗黙的な変換が用意されているため、この変更は承認されました。

### 定義されていない変数への値の代入の禁止
<span class="badge bg-success">承認</span>

AliceScriptRC1以前のバージョンでは、定義されていない変数にもvarキーワードを使用しないで変数を定義することができました。これは未アクセスの変数に対して値が存在するか確認できないという潜在的な欠陥が存在しているため使用できなくなります。次は未定義の変数aに12345を代入し定義するコードです。AliceScriptRC1以前では動作していましたが今は動作しません。

```js title="AliceScript"
a = 12345;
```

### ラムダ式の導入
<span class="badge bg-success">承認</span>

Alice2.0では、ラムダ式が導入されました。ラムダ式を使うと、デリゲートを簡潔に記述することができます。たとえば、以下のような形式です。

```cs title="AliceScript"
var del =(x)=>x**x;
```


AliceScriptRC2以降でこれと同じ動作を行うことができる唯一の方法は次の通りです。

```js title="AliceScript"
var a = 12345;
```

変数を定義した後の代入に関する動作に変更はありません。この変更は承認されました。

### 暗黙的な型変換の廃止
<span class="badge bg-success">承認</span>

AliceScriptRC1以前のバージョンでは、関数などの対応する型が与えられた型ではない場合、自動的にその値を対応する型に変換します。これを暗黙的な型変換とよびますが、これは本来の用途に使用できない値などが与えられても例外が発生することなく予期しない動作をしてしまう可能性がありました。これを解消するために暗黙的な型変換は廃止されました。この変更は承認されました。

また、もう一つの解決策として、引数の型指定を行うことも検討してください。
### 変数/関数のスコープ
<span class="badge bg-success">承認</span>

AliceScriptGM以前のバージョンでは、変数と関数、定数はすべてグローバルとして定義されていました。これは複数回同じファイルを実行する際に重複定義が発生してしまうおそれがあるなどの潜在的な欠陥を有していました。AliceScriptGMでは、スコープが導入され、そのスコープの範囲内で宣言された変数と関数、定数はいずれもその範囲外では使用できなくなりました。これはネストされたスコープに対しても有効です。この変更は承認されました。