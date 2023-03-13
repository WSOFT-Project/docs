---
title : AliceScriptWikiの概要
summary : この記事では、AliceScriptWikiについて説明するとともに、編集者用ページの内容を示します。
date : 2022-02-13
---

### 概要
AliceScriptWikiは、AliceScriptの使用方法とAPIドキュメントを提供する場として、2021年7月23日に公開されました。現在では、そのドキュメントの大部分はWSOFTDocsのAliceScriptDocsに移行されました。このサイトの廃止は現時点では検討していませんが、今後の更新はAliceScriptDocsがメインになります。

AliceScriptWikiでは、一部の機能へのリンクが無効化されています。AliceScriptWikiを編集するにはログインが必要です。

- AliceScriptWikiに[ログイン](https://alice.wsoft.ws/index.php?title=%E7%89%B9%E5%88%A5:%E3%83%AD%E3%82%B0%E3%82%A4%E3%83%B3)して、このWikiを編集します。
- AliceScriptWikiに[ファイルをアップロード](https://alice.wsoft.ws/index.php?title=%E7%89%B9%E5%88%A5:%E3%82%A2%E3%83%83%E3%83%97%E3%83%AD%E3%83%BC%E3%83%89)します。
- AliceScriptWikiに[アップロードされたファイルの一覧](https://alice.wsoft.ws/index.php?title=%E7%89%B9%E5%88%A5:%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E4%B8%80%E8%A6%A7)はここにあります。
- AliceScriptWikiの[統計](https://alice.wsoft.ws/index.php?title=%E7%89%B9%E5%88%A5:%E7%B5%B1%E8%A8%88)
- AliceScriptWikiの[特別ページの一覧](https://alice.wsoft.ws/index.php?title=%E7%89%B9%E5%88%A5:%E7%89%B9%E5%88%A5%E3%83%9A%E3%83%BC%E3%82%B8%E4%B8%80%E8%A6%A7)はここにあります。

AliceScriptDocsをホストしているWSOFTDocsで同様の操作をすることもできます。

- [WSOFTDocsのリポジトリ](https://github.com/WSOFT-Project/docs)を開いて、記事を編集したり、ファイルをアップロードしたりします。
- WSOFTDocsの[統計](https://docs.wsoft.ws/statics)はここにまとめられています。

### テンプレート
AliceScriptWikiでは、テンプレートを使うことでWiki内で共通のコントロールを簡単に使用できます。

#### Alert

<div class="alert alert-light" role="alert">
  <span style="font-size : 18px">タイトル</span>
  <span style="font-size : 14px">
    簡単なアラートのサンプルです。
  </span>
</div>

##### 使用法

```txt title="WikiText"
{{{Alert|本文|タイトル|色コード|本文サイズ|タイトルサイズ|角の丸み|本文色|タイトル色|背景色|枠色}}}
```

##### パラメーター

|引数|説明|
|---|---|
|**本文**|アラートの本文です|
|**タイトル**|アラートのタイトルです|
|**色コード**|よく使う色のセットを指定します。規定値は7。本文色、タイトル色または背景色が設定されているときは無視されます。|
|**本文サイズ**|本文のテキストのフォントサイズです。規定値は14pxです。|
|**タイトルサイズ**|タイトルのテキストのフォントサイズです。規定値は18pxです。|
|**角の丸み**|要素の角の丸みです。規定値は0.5emです。|
|**本文色**|本文のテキストの色です。指定しなければ色コードから自動的に選択されます。|
|**タイトル色**|タイトルのテキストの色です。指定しなければ色コードから自動的に選択されます。この色は規定では本文色と同じです。|
|**背景色**|背景の色です。指定しなければ色コードから自動的に選択されます。|
|**枠色**|枠線の色です。指定しなければ色コードから自動的に選択されます。|

##### 色コードの一覧

<div class="alert alert-primary" role="alert">
  簡単なアラートのサンプルです。色コード:0
</div>
<div class="alert alert-secondary" role="alert">
  簡単なアラートのサンプルです。色コード:1
</div>
<div class="alert alert-success" role="alert">
  簡単なアラートのサンプルです。色コード:2
</div>
<div class="alert alert-danger" role="alert">
  簡単なアラートのサンプルです。色コード:3
</div>
<div class="alert alert-warning" role="alert">
  簡単なアラートのサンプルです。色コード:4
</div>
<div class="alert alert-info" role="alert">
  簡単なアラートのサンプルです。色コード:5
</div>
<div class="alert alert-light" role="alert">
  簡単なアラートのサンプルです。色コード:6
</div>
<div class="alert alert-dark" role="alert">
  簡単なアラートのサンプルです。色コード:7
</div>

##### 使用例

```txt title="WikiText"
 {{Alert| あのイーハトーヴォのすきとおった風、夏でも底に冷たさをもつ青いそら、うつくしい森で飾られたモリーオ市、郊外のぎらぎらひかる草の波。<hr>またそのなかでいっしょになったたくさんのひとたち、ファゼーロとロザーロ、羊飼のミーロや、顔の赤いこどもたち、地主のテーモ、山猫博士のボーガント・デストゥパーゴなど、いまこの暗い巨きな石の建物のなかで考えていると、みんなむかし風のなつかしい青い幻燈のように思われます。では、わたくしはいつかの小さなみだしをつけながら、しずかにあの年のイーハトーヴォの五月から十月までを書きつけましょう。 |サンプル<br>|2}} 
```

これは次のように表示されます。

<div class="alert alert-success" role="alert">
  <h4 class="alert-heading">サンプル</h4>
  <p>あのイーハトーヴォのすきとおった風、夏でも底に冷たさをもつ青いそら、うつくしい森で飾られたモリーオ市、郊外のぎらぎらひかる草の波。</p>
  <hr>
  <p class="mb-0">またそのなかでいっしょになったたくさんのひとたち、ファゼーロとロザーロ、羊飼のミーロや、顔の赤いこどもたち、地主のテーモ、山猫博士のボーガント・デストゥパーゴなど、いまこの暗い巨きな石の建物のなかで考えていると、みんなむかし風のなつかしい青い幻燈のように思われます。では、わたくしはいつかの小さなみだしをつけながら、しずかにあの年のイーハトーヴォの五月から十月までを書きつけましょう。
  </p>
</div>

##### ソースコード

```txt title="WikiText"
{| style="padding: 2px 10px; display: inline-flex; align-items: center; border-style: solid; border-width: 1px; border-radius: {{{6|0.5em}}}; border-color: {{func-getcolor|3|{{{10|{{{3|}}}}}}}}; background-color:{{func-getcolor|2|{{{9|{{{3|}}}}}}}};"
|-
| <span style="font-size: {{#if:{{{5|}}}| {{{5}}} | 18px}}; color: {{func-getcolor|1|{{{8|{{{3|}}}}}}}};">{{{2|}}}</span>
<span style="font-size: {{#if:{{{4|}}}| {{{4}}} | 14px}}; color: {{func-getcolor|0|{{{7|{{{3|}}}}}}}};">{{{1|}}}</span>
|-
|}
```

##### Box
さまざまな色合いの箱を使って、読者に注意をひくコントロールを提供します。

このコントロールはアラートとよく似ていますが、Boxはより自由にコントロール内を変更可能であるという違いがあります。

##### 使用法

```txt title="WikiText"
{{Box|コンテンツ|色コード|フォントサイズ|角の丸み|クラス名|前景色|背景色|枠色}}
```

##### パラメーター

|引数|説明|
|---|---|
|**コンテンツ**|Boxに含まれるコンテンツです。|
|**色コード**|よく使う色のセットを指定します。規定値は7。本文色、タイトル色または背景色が設定されているときは無視されます。|
|**フォントサイズ**|デフォルトのフォントサイズです。規定値は12pxです。|
|**クラス名**|このコントロールに割り当てられる要素のクラス名です。空白文字' 'を使用して複数指定できます。規定では指定されていません。|
|**角の丸み**|要素の角の丸みです。規定値は0.5emです。|
|**前景色**|本文のコンテンツのデフォルトの前景色です。指定しなければ色コードから自動的に選択されます。|
|**背景色**|背景の色です。指定しなければ色コードから自動的に選択されます。|
|**枠色**|枠線の色です。指定しなければ色コードから自動的に選択されます。|


##### 使用例

```txt title="WikiText"
{{Box|<html>
  <font size="4em">サンプル</font>
  <p><font size="2.5em">あのイーハトーヴォのすきとおった風、夏でも底に冷たさをもつ青いそら、うつくしい森で飾られたモリーオ市、郊外のぎらぎらひかる草の波。</font></p>
  <hr>
  <p><font size="2.5em">またそのなかでいっしょになったたくさんのひとたち、ファゼーロとロザーロ、羊飼のミーロや、顔の赤いこどもたち、地主のテーモ、山猫博士のボーガント・デストゥパーゴなど、いまこの暗い巨きな石の建物のなかで考えていると、みんなむかし風のなつかしい青い幻燈のように思われます。では、わたくしはいつかの小さなみだしをつけながら、しずかにあの年のイーハトーヴォの五月から十月までを書きつけましょう。</font></p>
</html>|0|12px}}
```

これは次のように表示されます。

<div class="alert alert-primary" role="alert">
  <h4 class="alert-heading">サンプル</h4>
  <p>あのイーハトーヴォのすきとおった風、夏でも底に冷たさをもつ青いそら、うつくしい森で飾られたモリーオ市、郊外のぎらぎらひかる草の波。</p>
  <hr>
  <p class="mb-0">またそのなかでいっしょになったたくさんのひとたち、ファゼーロとロザーロ、羊飼のミーロや、顔の赤いこどもたち、地主のテーモ、山猫博士のボーガント・デストゥパーゴなど、いまこの暗い巨きな石の建物のなかで考えていると、みんなむかし風のなつかしい青い幻燈のように思われます。では、わたくしはいつかの小さなみだしをつけながら、しずかにあの年のイーハトーヴォの五月から十月までを書きつけましょう。
  </p>
</div>

##### ソースコード

```txt title="WikiText"
<html>
    <div class="</html>{{{5|}}}<html>" style="margin:10px; padding: 2px 10px;  border-style: solid; 
    border-width: 1px; border-radius: </html>{{{4|0.5em}}}<html>; border-color: </html>{{func-getcolor|3|{{{8|{{{2|}}}}}}}}<html>; background-color:</html>{{func-getcolor|2|{{{7|{{{2|}}}}}}}}<html>; font-size: </html>{{#if:{{{3|}}}| {{{3|}}} | 12px}}<html>; color: </html>{{func-getcolor|1|{{{6|{{{2|}}}}}}}}<html>; flex-direction: column;
    position: relative;"></html>
{{{1|}}}
<html></div>
</html>
```

##### Accordion
アコーディオンは、コントロールが「開いた」時のみ情報が表示される折りたたみ要素を提供します。

##### 使用法

```txt title="WikiText"
{{Accordion|本文|タイトル|スタイル無効|自動展開}}
```

##### パラメーター

|引数|説明|
|---|---|
|**本文**|アコーディオンを開いた時に表示するコンテンツ|
|**タイトル**|アコーディオンを開いていない時にも表示されるコンテンツ|
|**スタイル無効**|アコーディオンスタイルを無効にする場合は`true`、それ以外の場合は`false`。|
|**自動展開**|初めからアコーディオンを展開しておく場合は`true`、それ以外の場合は`false`。|


##### 使用例

```txt title="WikiText"
{{Accordion|アコーディオン|これはアコーディオンの本文です。}}
{{Accordion|スタイル無効のアコーディオン|このアコーディオンはクリックすると本文が表示されます。このアコーディオンには次の違いがあります。
*三角矢印が表示されません
*フォーカス時に青枠が表示されません|true}}
```

これは次のように表示されます。

<details>
  <summary>
    アコーディオン
  </summary>
  これはアコーディオンの本文です。このアコーディオンははじめから展開されています。
</details>

<details>
  <summary class="style-text" open="">
    スタイル無効のアコーディオン
  </summary>
  このアコーディオンはクリックすると本文が表示されます。このアコーディオンには次の違いがあります。
<p class="mw-empty-elt"></p>
<ul><li>三角矢印が表示されません</li>
<li>フォーカス時に青枠が表示されません
 </li></ul></details>

##### ソースコード

```txt title="WikiText"
{{func-ifstr| {{{3}}} | 
<html>
 <details>
  <summary class="style-text" </html>{{func-ifstr|{{{3}}}|open|}}<html>>
    </html>{{{1|}}}<html>
  </summary>
  </html>{{{2|}}}<html>
 </details>
</html>
|
<html>
 <details>
  <summary </html>{{func-ifstr|{{{3}}}|open|}}<html>>
    </html>{{{1|}}}<html>
  </summary>
  </html>{{{2|}}}<html>
 </details>
</html> 
}}

```

##### Svg
SvgスプライトをWiki内で簡単に使用できるようにします。

##### 使用法

```txt title="WikiText"
{{Svg|パス|高さ|幅|色|マージン}} 
```

##### パラメーター

|引数|説明|
|---|---|
|**パス**|Svgスプライトの点・線情報|
|**高さ**|スプライトの高さ。規定値は`20`です。|
|**幅**|スプライトの幅。指定されていない場合は高さの値が使用されます。規定値は`20`です。|
|**色**|スプライトの塗りつぶしの色。規定値は`currentColor`です。|
|**マージン**|スプライトのマージン。テキスト中のスプライトの位置を調整します。規定値は`-3px`です。|


##### 使用例

```txt title="WikiText"
{{Svg| M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z}}

{{Svg| M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z}}

{{Svg| M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z}}
```

これは次のように表示されます。

<div>
<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="{{func-getsafe|{{{4|}}}|currentColor}}" style="vertical-align: -3px;" viewBox="0 0 16 16">
    <path d=" M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"></path>
  </svg>
<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="{{func-getsafe|{{{4|}}}|currentColor}}" style="vertical-align: -3px;" viewBox="0 0 16 16">
    <path d=" M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"></path>
  </svg>
<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="{{func-getsafe|{{{4|}}}|currentColor}}" style="vertical-align: -3px;" viewBox="0 0 16 16">
    <path d=" M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"></path>
  </svg>
</div>

##### ソースコード

```txt title="WikiText"
<html><svg xmlns="http://www.w3.org/2000/svg" width="</html>{{func-getsafe|{{{2|}}}|20}}<html>" height="</html>{{func-getsafe|{{{3|}}}| {{func-getsafe|{{{2|}}}|20}}}}<html>" fill="{{func-getsafe|{{{4|}}}|currentColor}}" style= "vertical-align: </html>{{func-getsafe|{{{5|}}}|-3px}}<html>;"  viewBox="0 0 16 16">
    <path d="</html>{{{1|}}}<html>"/>
  </svg></html>
```

##### Script
記事内でJavaScriptを使用します。

##### 使用法

```txt title="WikiText"
{{Script|スクリプト}} 
```

##### パラメーター

|引数|説明|
|---|---|
|**スクリプト**|JavaScriptのソースコード|


##### 使用例

```txt title="WikiText"
{{Script|console.log('Hello,World!');}}
```

これは次のように表示されます。

```js title="出力例"
console.log('Hello,World!');
```

##### ソースコード

```txt title="WikiText"
<html><script>{{{1|}}}</script></html>
```

### テンプレート関数
テンプレート関数を使うことで、Wiki内で共通の操作を簡単に行うことができます。

##### func-getsafe
指定された値を返し、その値が`null`か`false`の場合は規定値を返します。

##### 使用法

```txt title="WikiText"
{{func-getsafe|値|規定値}} 
```

##### パラメーター

|引数|説明|
|---|---|
|**値**|値が`null`か`false`でない限り、この関数はこの値を返します。|
|**規定値**|値が`null`か`false`のとき、この関数はこの値を返します。|


##### 使用例

```txt title="WikiText"
{{func-getsafe|false|0}}
```

##### ソースコード

```txt title="WikiText"
{{#if:{{{1|}}}| {{{1}}} | {{{2|}}}}}
```

##### func-ifstr
指定された文字列が`true`であれば肯定結果を、`false`であれば否定結果を返します。

##### 使用法

```txt title="WikiText"
{{func-ifstr|文字列|肯定結果|否定結果}} 
```

##### パラメーター

|引数|説明|
|---|---|
|**文字列**|`true`と等価かどうかを検証する文字列|
|**肯定結果**|文字列が`true`のとき、この関数はこの値を返します。|
|**否定結果**|文字列が`true`ではないとき、この関数はこの値を返します。


##### 使用例

```txt title="WikiText"
{{func-ifstr|true|TRUE}}
```

##### ソースコード

```txt title="WikiText"
{{#ifeq: {{{1|}}} |true|{{{2|}}} | {{{3|}}}}}
```

##### func-getcolor
色コードをもとに、文字色、背景色、境界色を取得します。

##### 使用法

```txt title="WikiText"
{{func-getcolor|種類コード|色コード}}
```

##### パラメーター

|引数|説明|
|---|---|
|**種類コード**|`0`であれば文字色、`1`でヘッダー色、`2`で背景色、`3`で境界色を返します。|
|**色コード**|0-7までの数値。詳細は**Alert**の項目を参照してください。|


##### 使用例

```txt title="WikiText"
{{func-getcolor|0|0}}
```

出力される色は以下の表の通りです。

###### 文字色

|色コード||HTMLカラーコード|
|---|---|---|
|0|<span style="color : #054295;">■</span>|#054295|
|1|<span style="color : #42454A;">■</span>|#42454A|
|2|<span style="color : #105133;">■</span>|#105133|
|3|<span style="color : #82212A;">■</span>|#82212A|
|4|<span style="color : #674D00;">■</span>|#674D00|
|5|<span style="color : #05515F;">■</span>|#05515F|
|6|<span style="color : #646464;">■</span>|#646464|
|7|<span style="color : #15161A;">■</span>|#15161A|
|規定値|<span style="color : #646464;">■</span>|#646464|

###### ヘッダー色

|色コード||HTMLカラーコード|
|---|---|---|
|0|<span style="color : #063579;">■</span>|#063579|
|1|<span style="color : #35383F;">■</span>|#35383F|
|2|<span style="color : #0C4127;">■</span>|#0C4127|
|3|<span style="color : #6A1A23;">■</span>|#6A1A23|
|4|<span style="color : #523E01;">■</span>|#523E01|
|5|<span style="color : #06404C;">■</span>|#06404C|
|6|<span style="color : #4F5150;">■</span>|#4F5150|
|7|<span style="color : #111214;">■</span>|#111214|
|規定値|<span style="color : #4F5150;">■</span>|#4F5150|

###### 背景色

|色コード||HTMLカラーコード|
|---|---|---|
|0|<span style="color : #CFE2FF;">■</span>|#CFE2FF|
|1|<span style="color : #E2E3E5;">■</span>|#E2E3E5|
|2|<span style="color : #D1E6DD;">■</span>|#D1E6DD|
|3|<span style="color : #F7D7DA;">■</span>|#F7D7DA|
|4|<span style="color : #FFF3CD;">■</span>|#FFF3CD|
|5|<span style="color : #CFF4FC;">■</span>|#CFF4FC|
|6|<span style="color : #FEFEFE;">■</span>|#FEFEFE|
|7|<span style="color : #D3D3D5;">■</span>|#D3D3D5|
|規定値|<span style="color : #FEFEFE;">■</span>|#FEFEFE|

###### 境界色

|色コード||HTMLカラーコード|
|---|---|---|
|0|<span style="color : #B7D4FE;">■</span>|#B7D4FE|
|1|<span style="color : #D2D6D9;">■</span>|#D2D6D9|
|2|<span style="color : #BADBCA;">■</span>|#BADBCA|
|3|<span style="color : #F5C2C7;">■</span>|#F5C2C7|
|4|<span style="color : #FFEBB4;">■</span>|#FFEBB4|
|5|<span style="color : #B6EEFB;">■</span>|#B6EEFB|
|6|<span style="color : #FEFEFE;">■</span>|#FEFEFE|
|7|<span style="color : #BDBEC0;">■</span>|#BDBEC0|
|規定値|<span style="color : #FEFEFE;">■</span>|#FEFEFE|

##### ソースコード

```txt title="WikiText"
{{#switch: {{func-getsafe|{{{1|}}}|0}}
| 0 = {{#switch: {{func-getsafe|{{{2|}}}|-1}}
        | 0 = <nowiki>#054295</nowiki>
        | 1 = <nowiki>#42454A</nowiki>
        | 2 = <nowiki>#105133</nowiki>
        | 3 = <nowiki>#82212A</nowiki>
        | 4 = <nowiki>#674D00</nowiki>
        | 5 = <nowiki>#05515F</nowiki>
        | 6 = <nowiki>#646464</nowiki>
        | 7 = <nowiki>#15161A</nowiki>
        | {{func-getsafe|{{{2|}}}|<nowiki>#646464</nowiki>}}
      }}
| 1 = {{#switch: {{func-getsafe|{{{2|}}}|-1}}
        | 0 = <nowiki>#063579</nowiki>
        | 1 = <nowiki>#35383F</nowiki>
        | 2 = <nowiki>#0C4127</nowiki>
        | 3 = <nowiki>#6A1A23</nowiki>
        | 4 = <nowiki>#523E01</nowiki>
        | 5 = <nowiki>#06404C</nowiki>
        | 6 = <nowiki>#4F5150</nowiki>
        | 7 = <nowiki>#111214</nowiki>
        | {{func-getsafe|{{{2|}}}|<nowiki>#4F5150</nowiki>}}
      }}
| 2 = {{#switch: {{func-getsafe|{{{2|}}}|-1}}
        | 0 = <nowiki>#CFE2FF</nowiki>
        | 1 = <nowiki>#E2E3E5</nowiki>
        | 2 = <nowiki>#D1E6DD</nowiki>
        | 3 = <nowiki>#F7D7DA</nowiki>
        | 4 = <nowiki>#FFF3CD</nowiki>
        | 5 = <nowiki>#CFF4FC</nowiki>
        | 6 = <nowiki>#FEFEFE</nowiki>
        | 7 = <nowiki>#D3D3D5</nowiki>
        | {{func-getsafe|{{{2|}}}|<nowiki>#FEFEFE</nowiki>}}
      }}
| 3 = {{#switch: {{func-getsafe|{{{2|}}}|-1}}
        | 0 = <nowiki>#B7D4FE</nowiki>
        | 1 = <nowiki>#D2D6D9</nowiki>
        | 2 = <nowiki>#BADBCA</nowiki>
        | 3 = <nowiki>#F5C2C7</nowiki>
        | 4 = <nowiki>#FFEBB4</nowiki>
        | 5 = <nowiki>#B6EEFB</nowiki>
        | 6 = <nowiki>#FEFEFE</nowiki>
        | 7 = <nowiki>#BDBEC0</nowiki>
        | {{func-getsafe|{{{2|}}}|<nowiki>#FEFEFE</nowiki>}}
      }}
| {{func-getsafe|{{{2|}}}|<nowiki>#FEFEFE</nowiki>}}
}}
```