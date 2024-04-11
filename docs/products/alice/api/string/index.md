---
title: string
summary: 文字列型は、テキストを一連のUTF-16文字のリストとして表現します。
---
### 定義
名前空間:Alice / アセンブリ : Losetta.dll / サポート: AliceScript1

文字列型は結合、[関係](../../general/operators/relational-operators.md)演算子と[文字列演算子](../../general/operators/string-operators.md)をサポートしています。 文字列型の規定値は空の文字列`""`です。また、この型の型指定修飾子は`string`です。

すべてのAliceScriptに組み込まれている型はすべて文字列型への暗黙的な変換をサポートしています。文字列型に限って、明示的な変換と明示的な変換は同じ動作になります。

```cs title="AliceScript"
namespace Alice;
public class string;
```

### 説明
文字列は、テキストを表すために使用される文字の配列とみなすことができます。メモリ内の`string`型の最大サイズは2GB、つまりおよそ10億文字です。

#### 文字列型の変数を定義する
文字列型は次の方法で初期化されます。

- 変数に文字列リテラルを割り当てる。これは文字列を作成するためにもっとも一般的に使用される方法です。次の例では、代入を使用して文字列を定義しています。

```cs title="AliceScript"
var str = "Hello,World";
```

- 文字列連結演算子（`+`）を使用して、文字列リテラル同士を結合する。次の例では、文字列リテラル同士を`+`や`+=`演算子を使用して結合しています。

```cs title="AliceScript"
var str = "Hello," + "World";
str += "!";
print(str);
```

- 文字列補間または[複合書式指定](../alice/string_format.md)を使用する。次の例では、文字列補間を使用して`a + b`の値を出力しています。

```cs title="AliceScript"
number a = 1;
number b = 2;

string str = $"{a} + {b} = {a + b}";
print(str);
// 出力: 1 + 2 = 3
```

- [variable.ToString](../variable/tostring.md)メソッドを使用する。次の例では、数値型の変数`a`を`ToString`メソッドを使用して文字列に変換しています。

```cs title="AliceScript"
number a = 1;
string str = a.ToString();
```

#### 文字列リテラル
プログラム内で文字列を定義するには、文字列リテラルを使用します。文字列リテラルは通常、ダブルクオーテーション（`"`）で囲まれています。この種の文字列リテラルの宣言中に改行やコメントを挟むことはできません。次に例を示します。

```cs title="AliceScript"
var str = "Hello,World";
```

文字列リテラル内で特殊文字を使用するには、エスケープ文字を使用します。
エスケープ文字は、以下のような用途で使用します。

- `""`内で`"`を書くなど、直接使用できない記号を書く
- 改行文字やタブ文字など、不可視文字を見える形で書く

AliceScriptのエスケープ文字は`\`（バックスラッシュ、日本語環境では`¥`と表示されることもある）で始まる1～8つの英数字で表記します。エスケープ文字では、大文字と小文字を区別し、認識できないエスケープ文字を見つけた場合は[UNKNOWN_ESCAPE_CHAR](../../exceptions/0x04b.md)エラーが発生します。

次に、エスケープ文字とその意味を示します。

|エスケープ文字|Unicodeコードポイント|説明|
|---|---|---|
|`\0`|`\u0000`|ヌル文字|
|`\a`|`\u0007`|ベル（警告）文字|
|`\b`|`\u0008`|バックスペース|
|`\t`|`\u0009`|水平タブ|
|`\n`|`\u000a`|改行|
|`\v`|`\u000b`|垂直タブ|
|`\f`|`\u000c`|フォームフィード|
|`\r`|`\u000d`|キャリッジリターン|
|`\e`|`\u001b`|エスケープ|
|`\\`|`\u005c`|バックスラッシュ|
|`\'`|`\u0027`|シングルクオーテーション|
|`\"`|`\u0022`|ダブルクオーテーション|
|`\u`|`\uHHHH`|Unicodeコードポイント（4桁）|
|`\U`|`\UHHHHHHHH`|Unicodeコードポイント（8桁）|
|`\x`|`\UH[H][H][H]`|Unicodeコードポイント（任意桁）|

!!!note "特殊文字とレンダリング"
    ここで示した文字に限らず、すべてのUnicode文字がレンダリングされるわけではありません。たとえば`\a`は、レンダリングされず、コンソールに警告音を鳴らします。

!!!note "文字列リテラル中で使用できない文字"
    `\ufdd0`～`\ufddf`の範囲にある文字は、SAIMが処理に使用することがあるため、文字列リテラル中で使用できません。

また、`\u0000`のように指定することで4バイトUnicode文字コードを表現できます。

さらに、`\U00000000`のように指定することで8バイトUnicode文字コードも表現可能です。

#### 文字列と文字
文字列内の各文字は、内部的にはUnicodeコードポイントのスカラー（数値）として扱われています。実際、`string.foreach`メソッドを使用すると文字列をひとつひとつの文字を含む文字列に変換することができ、`string.length`プロパティを呼び出すと、文字列内に含まれる文字の個数を取得できます。

通常、ひとつの要素はひとつの文字を表します。つまり、`string.length`の値は文字列内に含まれる文字の個数と等しくなります。しかし、特殊な文字の中には複数の要素が必要になる場合があります。（これをサロゲートペアと呼びます）この場合、`string.length`の値は必ずしも文字列内に含まれる文字の個数と一致するとは限りません。

#### 文字列とUnicode標準
文字列の扱いはSAIMの各実装に依存するため、各実装のバージョンあるいはCLRによって対応するUnicodeのバージョンが異なる可能性があります。

次の表は、AliceScriptの各実装と準拠するUnicodeのバージョンを示します。

|実装の名前|Unicode標準のバージョン|
|---|---|
|AliceScript|[Unicode標準、バージョン11.0.0](https://www.unicode.org/versions/Unicode11.0.0/)|
|AliceSister|[Unicode標準、バージョン6.3.0](https://www.unicode.org/versions/Unicode6.3.0/)|
|Losetta|[Unicode標準、バージョン13.0.0](https://www.unicode.org/versions/Unicode13.0.0/)|

#### 逐語的文字列リテラル
<span class="badge bg-success">対応バージョン>=Alice3.0</span>
逐語的文字列リテラルを使用すると、ダブルクオーテーション（`"`）などをエスケープ文字なしに表現できます。この形式で文字列を表現するには文字列をシングルクオーテーション（`'`）で囲みます。逐語的文字列リテラルではエスケープ文字を使用することはできません。次に例を示します。

```cs title="AliceScript"
var str = '"Hello",World'; // "Hello",World
```

??? "以前のバージョンの仕様"
  逐語的文字列リテラルを使用すると、ダブルクオーテーション（`"`）などをエスケープ文字なしに表現できます。この形式で文字列を表現するには文字列をシングルクオーテーション（`'`）で囲みます。逐語的文字列リテラルではエスケープ文字は、`\\`と`\'`のみ使用できます。次に例を示します。

  ```cs title="AliceScript"
var str = '"Hello",World'; // "Hello",World
  ```

#### 生文字列リテラル
<span class="badge bg-success">対応バージョン>=Alice2.1</span>

生文字列リテラルを使用すると、さらに柔軟に文字列を表現できます。まず、この方式ではエスケープ文字は使用できません。さらに、宣言中の改行が許可されます。これは次のように宣言します。

```cs title="AliceScript"
var str ="""Hello,
"World"!"""
```

つまり、生文字列リテラルでは、文字列を必要な個数のダブルクオーテーション（`"`）で囲みます。ダブルクオーテーションは少なくとも3つ以上必要で、奇数個である必要があります。
また、このリテラル内ではそれ自体を囲むダブルクオーテーションの数を超えない限り、ダブルクオーテーションを連続して使用できます。つまり、`""`を表現するには`""" "" """`とすればできますし、`"""`を表現するには`""""" """ """`とすれば表現できます。

!!!warning "ダブルクオーテーションは奇数個"
    生文字列リテラルを囲むダブルクオーテーションは必ず奇数個を使用してください。たとえば、`"""" "" """"`と表現するとインタプリタには5つの文字列リテラルと解釈されます。

#### 文字列補間
<span class="badge bg-success">対応バージョン>=Alice3.0</span>

ダブルクオーテーションのひとつ前に`$`特殊文字が存在する場合、SAIMは文字列リテラルを、補間式が含まれている可能性がある文字列補間リテラルとして認識します。文字列補間リテラルの補間式は、式の結果の文字列表現によって置換されます。

文字列補間によって、より読みやすく便利に文字列内に値や式を挿入できます。これは、[複合書式指定](../alice/string_format.md)よりも読みやすくなります。次の例では、複合書式指定と文字列補間の両方を使用して同じ結果を表示しています。これを比較してみてください。

```cs title="AliceScript"
var x = 2;
var y = 3;

//複合書式指定
print(string_format("{0} + {1} = {2}",x,y,(x+y)));
//文字列補間
print($"{x} + {y} = {x+y}");
```
##### 文字列補間リテラルの構造
文字列リテラルを文字列補間リテラルとして識別するため、文字列の先頭に`$`の記号を追加する必要があります。複数の文字列補間リテラルを連結するには、`$`記号をそれぞれの文字列リテラルに追加します。

文字列補間リテラルには、逐語的文字列リテラルを使用できます。次に例を示します。

```js title="AliceScript"
var x = 2;
var y = 3;

print($'"{x}" + "{y}" = "{x+y}"');//出力例: "2" + "3" = "5"
```

また、文字列補間リテラルには、生文字列リテラルも使用できます。次に例を示します。

```cs title="AliceScript"
var x = 2;
var y = 3;

print($"""
  {x}
+ {y}
-----
  {x+y}""");
```

この例は次のように出力されます。

```txt title="出力例"
  2
+ 3
-----
  5
```

文字列補間リテラルで`{`や`}`文字を表現したい場合はその文字の直前に`\`バックスラッシュを追加して文字をエスケープします。これは、逐語的文字列リテラルや生文字列リテラルでも同様です。
次に例を示します。

```cs title="AliceScript"
var x = 2;
var y = 3;

print($"\{{x}\} + \{{y}\} = \{{x+y}\}");//出力例: {2} + {3} = {5}
```

##### セキュリティ上の懸念事項
[複合書式指定](../alice/string_format.md)や純粋な文字列連結と同様に、文字列補間はSQLインジェクションなどのセキュリティ上の問題を起こしうることがあります。以下に、SQLインジェクションを起こす文字列補間の例を示します。

```cs title="AliceScript"
var query = $"SELECT * FROM Table WHERE id='{id}'";
```

このような半完成のSQL文があるとき、`id`が"`'; DELETE FROM Table; SELECT * FROM Table WHERE id='`"と入力された場合、このクエリを実行するとテーブルのすべてのデータが削除されます。


### プロパティ
|名前|説明|
|---|---|
|[IsNormalized](./isnormalized.md)|現在の文字列が共通の正規化された形式であるかを示す値を取得します|
|[Length](../array/length.md)|その変数の持つデータ長を表します|

### メソッド
|名前|説明|
|---|---|
|[CompareTo(string item)](./compareto.md)|この文字列と指定した文字列を比較して、文字列を並べ替えたときにこの文字列が前にくるか、後ろにくるか、または同じであるかを表す整数を取得します|
|[Contains(string item)](./contains.md)|現在の文字列内に指定された文字列が存在するかを示す値を取得します|
|[Contains(string item,bool ignoreCase)](./contains.md)|大文字小文字を区別するかを指定して、現在の文字列内に指定された文字列が存在するかを示す値を取得します|
|[Contains(string item,bool ignoreCase,bool considerCulture)](./contains.md)|大文字小文字の区別と、現在のカルチャを考慮するかを指定して、現在の文字列内に指定された文字列が存在するかを示す値を取得します|
|[EndsWith(string item)](./endswith.md)|現在の文字列が指定した文字列で終わるかどうかを判定します|
|[EndsWith(string item,bool ignoreCase)](./endswith.md)|大文字小文字を区別するかを指定して、現在の文字列が指定した文字列で終わるかどうかを判定します|
|[EndsWith(string item,bool ignoreCase,bool considerCulture)](./endswith.md)|大文字小文字の区別と、現在のカルチャを考慮するかを指定して、現在の文字列が指定した文字列で終わるかどうかを判定します|
|[Equals(string item)](./equals.md)|この文字列と、指定した文字列が同一かどうかを判断します|
|[Equals(string item,bool ignoreCase)](./equals.md)|大文字小文字を区別するかを指定して、この文字列と、指定した文字列が同一かどうかを判断します|
|[Equals(string item,bool ignoreCase,bool considerCulture)](./equals.md)|大文字小文字の区別と、現在のカルチャを考慮するかを指定して、この文字列と指定した文字列が同一かどうかを判断します|
|[Format(params variable item)](./format.md)|指定された値を使用して現在の文字列を複合書式指定子としてフォーマットした文字列を取得します|
|[GetBytes()](./getbytes.md)|現在の文字列に含まれるすべての文字をUTF-8文字コードのデータにエンコードします|
|[GetBytes(string charCode)](./getbytes.md)|現在の文字列に含まれるすべての文字を指定された名前に対応する文字コードのデータにエンコードします|
|[GetBytes(number codepage)](./getbytes.md)|現在の文字列に含まれるすべての文字を指定されたコードページに対応する文字コードのデータにエンコードします|
|[Indent(number indentLevel,string indentChar=" ")](./indent.md)|文字列を指定されたレベルで字下げした新しい文字列を取得します|
|[IndexOf(string item,number startIndex=0)](./indexof.md)|指定された文字列が現在の文字列内で最初に見つかった位置のインデックスを返します|
|[Insert(number index,string item)](./insert.md)|現在の文字列内の指定したインデックスにその値を挿入した文字列を取得します|
|[IsEmptyOrNull()](./isemptyornull.md)|現在の文字列が空か、あるいはnullであるかどうかを示す値を取得します|
|[IsEmptyOrWhiteSpace()](./isemptyorwhitespace.md)|現在の文字列が空か、あるいは空白文字のみであるかどうかを示す値を取得します|
|[Join(string split,params string item)](./join.md)|指定された区切り文字を使用して文字を連結します|
|[LastIndexOf(string item,number startIndex=0)](./lastindexof.md)|指定された文字列が現在の文字列内で最後に見つかった位置のインデックスを返します|
|[Normalize()](./normalize.md)|同じ文字を表すコードポイントのすべての並びを共通の正規化された形式に文字列を変換した新しい文字列を取得します|
|[PadCenter(number totalWidth, bool padRight = false, bool truncate = false);](./padcenter.md)|指定された文字数になるまで両側に空白文字を埋め込むことで、この文字列を中央寄せした新しい文字列を作成します|
|[PadCenter(number totalWidth, string paddingChar = " ", bool padRight = false, bool truncate = false);](./padcenter.md)|指定された文字数になるまで両側に指定された文字を埋め込むことで、この文字列を中央寄せした新しい文字列を作成します|
|[PadLeft(number totalWidth,string padding=" ")](./padleft.md)|指定された文字数になるまで左側に指定された文字列を埋め込むことで、この文字列を右寄せした新しい文字列を取得します|
|[PadRight(number totalWidth,string padding=" ")](./padright.md)|指定された文字数になるまで右側に指定された文字列を埋め込むことで、この文字列を左寄せした新しい文字列を取得します|
|[Remove(params string item)](./remove.md)|現在の文字列から指定された値を削除した文字列を取得します|
|[RemoveAt(number index)](./removeat.md)|現在の文字列の指定したインデックスにある値を削除した文字列を取得します|
|[Repeat(number repeatCount)](./repeat.md)|現在の文字列を指定回数繰り返した文字列を取得します|
|[Replace(string oldValue,string newValue)](./replace.md)|現在の文字列内に出現する特定の文字列をすべて指定した文字列に置き換えます|
|[ReplaceLineEndings()](./replacelineendings.md)|現在の文字列中のすべての改行文字を[env_newline](../alice/environment/env_newline.md)の値に置換します|
|[ReplaceLineEndings(string replacementText)](./replacelineendings.md)|現在の文字列中のすべての改行文字を指定した文字列に置換します|
|[Split()](./split.md)|現在の文字列を一文字ずつに分割します|
|[Split(string separator)](./split.md)|現在の文字列を指定した区切り文字列で分割した配列を取得します|
|[SplitLines()](./splitlines.md)|現在の文字列を行単位で分割した配列を取得します|
|[StartsWith(string item)](./startswith.md)|現在の文字列が指定した文字列で始まるかどうかを判定します|
|[StartsWith(string item,bool ignoreCase)](./endswith.md)|大文字小文字を区別するかを指定して、現在の文字列が指定した文字列で始まるかどうかを判定します|
|[StartsWith(string item,bool ignoreCase,bool considerCulture)](./endswith.md)|大文字小文字の区別と、現在のカルチャを考慮するかを指定して、現在の文字列が指定した文字列で始まるかどうかを判定します|
|[SubString(number start)](./substring.md)|現在の文字列から指定した範囲の文字列を取得します|
|[SubString(number start,number length)](./substring.md)|現在の文字列から指定した範囲の文字列を取得します|
|[Size()](../array/size.md)|その変数の持つデータ長を取得します|
|[ToLower()](./tolower.md)|現在の文字列内の文字をすべて小文字に置換します|
|[ToLowerInvariant()](./tolowerinvariant.md)|インバリアント カルチャの大文字と小文字の規則を使用して、現在の文字列内の文字をすべて小文字に置換します|
|[ToUpper()](./toupper.md)|現在の文字列内の文字をすべて大文字に置換します|
|[ToUpperInvariant()](./toupperinvariant.md)|インバリアント カルチャの大文字と小文字の規則を使用して、現在の文字列内の文字をすべて大文字に置換します|
|[Trim()](./trim.md)|現在の文字列から先頭および末尾にある空白文字をすべて削除した文字列を取得します|
|[Trim(params string item)](./trim.md)|現在の文字列から指定した文字列が先頭および末尾に現れる箇所をすべて削除した文字列を取得します|
|[TrimEnd()](./trimend.md)|現在の文字列から末尾にある空白文字をすべて削除した文字列を取得します|
|[TrimEnd(params string item)](./trimend.md)|現在の文字列から指定した文字列が末尾に現れる箇所をすべて削除した文字列を取得します|
|[TrimStart()](./trimstart.md)|現在の文字列から先頭にある空白文字をすべて削除した文字列を取得します|
|[TrimStart(params string item)](./trimstart.md)|現在の文字列から指定した文字列が先頭に現れる箇所をすべて削除した文字列を取得します|