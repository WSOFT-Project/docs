---
title: WSOFT AdventWeekへようこそ
summary: WSOFTAdventWeek2022へようこそ。この記事には、AdventWeek初日の発表を含みます。
date : 2022-12-19
order : 6
---

<video class="img-fluid" src="../media/advent-2022.mp4" controls alt="AdventWeek2022の紹介"></video>

WSOFT AdventWeek 2022へようこそ。WSOFT AdventWeekとは、クリスマスまでの日数をカウントダウンするアドベントカレンダーの慣習にちなんで12月19日から25日までの7日間、一日2つから3つ、新しいソフトウェアやサービス、またそれらの更新が配信されるイベントです。

AdventWeekでは、開発者とユーザーの皆さんの両方が楽しめるように設計されています。AdventWeekでは開発者向けのソフトウェアだけでなく、ユーザー目線に立ったソフトウェアやサービスも配信します。もちろん、すべてのソフトウェアやサービスは無料で使用できます。

2022年のこれまで、WSOFTは4つの新しいソフトウェアとサービスを配信しました。このイベントではそれをはるかに超える15つの新しいソフトウェアやサービスを配信します。

### AliceScript
[AliceScriptWiki](https://alice.wsoft.ws/index.php?title=%E3%83%A1%E3%82%A4%E3%83%B3%E3%83%9A%E3%83%BC%E3%82%B8)には、クラスやオブジェクトなどの概念に関する記事がほとんどありません。これは、AliceScriptの歴史においてオブジェクト指向の考え方があまり重要視されていなかったことを示しています。

しかし、オブジェクト指向は従来私たちが目で見て、操作していたすべてのオブジェクトを仮想化し、抽象化することができるので、プログラミング効率を飛躍的に向上させることは明らかです。

AliceScript2.0では、ObjectBaseとユーザー定義クラスとの親和性が向上しました。ObjectBaseとユーザー定義クラスは相互に継承することができ、コンストラクタなどの機能もObjectBaseに実装されました。

Alice.Runtimeも大幅に機能が向上しました。`Alice.Environment`名前空間には現在実行されているインタプリタやコンピューターの情報を簡単に知ることができる機能があります。
`Alice.Security`名前空間には高度なパスワードのハッシュ化やファイルの暗号化に関する機能があります。`Alice.Diagnostics`名前空間にはプロセスの操作やストップウォッチ等があります。これにより、シェルスクリプトのような使用もできます。

名前空間にも更新があります。従来の`import()`関数が廃止され、`using namespace;`構文が導入されました。また、わざわざ`using`しなくても、クラスや関数を完全修飾名で参照できる機能も導入されました。たとえば、`Alice.Diagnostics`名前空間の`StopWatch`オブジェクトを使うには、`new Alice.Diagnostics.StopWatch()`とするだけで使用できます。

AlicePackageでは、同じパッケージ内のファイルをスクリプトから読み出すことができるようになりました。これにより、AlicePackage開発者はもっと簡単に複雑なパッケージを作成できます。

しかし、単純なテキストを取得するために、そのような方法を取る必要はありません。`GetString{TEXT}`構文を使えば、コード内で波括弧内のテキストを文字列に変換できます。

[ AliceScriptのダウンロード](https://download.wsoft.ws/WS00139){: .btn .btn-primary .btn-lg .bi .bi-download }
[ AliceSisterのダウンロード](https://download.wsoft.ws/WS00140){: .btn .btn-primary .btn-lg .bi .bi-download }