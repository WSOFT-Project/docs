---
title: WSOFTのドキュメントの WSOFT Docs への移行に関する情報
summary: この記事では、WSOFTの提供している、あるいは提供していた記事群のWSOFTDocsへの移行に関する情報をお知らせします。
date : 2022-11-10
order : 3
---
本日は、あみうは、WebSailing-NetとAliceScriptWikiのコンテンツのWSOFTDocsへの移行に関する重要な更新情報をお知らせします。
この記事では、コンテンツの構造、形式、および基盤となるインフラストラクチャを徹底的に見直し、WSOFTの提供するコンテンツを一元化する全プロジェクト共通の取り組みの最後の数ステップについて説明します。

### AmebaOwandからWSOFTCMS、さらにWSOFTDocsへ
2018年、WebbSailingのサポート記事提供の場として、WebSailing-Netが誕生しました。WebSailingが、NX系に移行するまでの間、21の記事がAmebaOwandによってホストされました。

WSTubeの開発に際して、WSOFTは、自前でサーバーを用意し、そこで記事を提供する方式が導入されました。そこで、WSOFTはWSTubeで設計したUIを流用し、HelpEngineを開発しました。現在では、これは[オープンソース](https://github.com/taiseiue/helpengine)化されています。WSOFTは、この方式を3年以上にわたって使用し続け、その結果、200を超える記事をHelpEngineを通じて提供しました。

![旧バージョンのWSOFTのサイトでの「WSOFTのドキュメントの WSOFT Docs への移行に関する情報」の表示](media/7.jpg)

### 新しいドキュメント管理方法
ソフトウェアの多様化やリリースサイクルの短縮につれて、見やすくできるだけ最新のドキュメントを提供する必要が増大しました。記事の執筆を開発のスピードに合わせる必要があり、さらに、サポートが終了しているプロジェクトの資産を未だに使用し続けていることなどから、私はWSOFTのサイトに近代的なドキュメント管理方法を導入することに決めました。新しいプロジェクトには次の事項が求められました。

- **ドキュメントの集約** 新しいサイトでは、WSOFTが提供しているすべての記事を一つのサイトに集約します。例えば、AliceScriptを使ってWSPluginを設計しようとしている開発者は、WebSailing、WSPlugin、AliceScriptに関連するすべての記事やヘルプを検索することができます。
- **ユーザー体験の向上** WSOFTCMSは、WSTube譲りのユーザーインターフェースやレスポンシブデザインへの前提的な対応など、お世辞にも使いやすいものとは言えませんでした。しかし、すべての記事は、みなさまに提供するために執筆されているため、みなさまにとって使いやすいものである必要があります。新しいサイトでは、読みやすいフォント、アクセスしやすい目次、人間にとってわかりやすいUrl、バージョン管理のサポート、レスポンシブデザインへの完全な対応を実装します。
- **サポート記事の民主化** 新しいサイトでは、ユーザーのみなさまが記事を執筆および編集できるように、オープンソースのツールや規格を採用します。記事の執筆には、マークダウン形式を使用し、コンテンツ管理システムとしてGitHubを使用します。これにより、誤字脱字などをみなさまに直接訂正していただくことができ、記事の品質が向上します。
- **従来の記事の保護** 新しいサイトへの移行によって、貴重な従来の記事やコンテンツが失われることがないようにします。2022年末までに、ほぼすべての記事を新しいサイトへと移行させる予定です。

### 移行の進捗状況
新しいサイトはWSOFTDocsと名付け、2022年11月1日に公開しました。同年末には、WSOFTの提供するほぼすべての記事が、新しいサイトへと移行される予定です。進捗状況について詳しくは、以下をご覧ください。

#### あみうは
状況:<span class="badge bg-success">完了</span>

[あみうは](https://amiuha2103.amebaownd.com)の[WSOFTDocs](https://docs.wsoft.ws)への移行は、すでに完了しました。

そのブログでは以前、パソコンやガジェット、果ては恋愛話まで幅広い話題を扱った記事を公開していました。
最初は小学生間の小さな話のネタだったものは、あみうはのサイトの開設に伴って世界中のみなさんと共有することができるようになりました。

この移行では、30を超えるAmebaOwandで記述された記事を、Markdownに書き直すことが必要でした。すべての記事のWSOFTDocsへの移行が完了しました。
それらの記事は[あみうはDocs](https://docs.wsoft.ws/amiuha)で公開しています。

#### WSOFTScript
状況:<span class="badge bg-success">完了</span>

WSOFTScriptの更新情報などをお知らせしていた[WSOFTScriptのサイト](https://wsoft.ws/script)の[WSOFTDocs](https://docs.wsoft.ws/script)への移行はすでに完了しました。

#### WebSailingNet
状況:<span class="badge bg-success">完了</span>

WebSailingNetと一口に言っても、それに分類されるサイトは[WebSailing-Netのメインサイト](https://websailing.localinfo.jp)や[WebSailingDeveloper](https://developer-websailing.localinfo.jp)、[WSPluginライブラリ](https://plugin-websailing.localinfo.jp)、[WebSailingNXサポート](https://suport-websailing.localinfo.jp)や[WSEガイド](https://wseguide-websailing.localinfo.jp)などさまざまです。

それらすべてのサイトの記事のWSOFTDocsへの移行は完了しました。それらの記事は[WebSailingDocs](../products/websailing/index.md)で公開しています。

#### AliceScriptWiki
状況:<span class="badge bg-warning text-dark">進行中</span>

[AliceScriptWiki](https://alice.wsoft.ws/)では現在に至るまで、APIリファレンスを含め50を超える記事が公開されてきました。APIリファレンスでは、できる限り同じようなエクスペリエンスを提供する必要があるため、特別な設計が必要になります。
現在、163件の記事をWSOFTDocsへ移行しました。いくつかの記事は、Docsへの転送が始まっています。準備が整った記事から順に[AliceScriptDocs](https://docs.wsoft.ws/alice)で公開していきます。

#### 生存報告
状況:<span class="badge bg-warning text-dark">進行中</span>

かつて常闇より出る深淵名義で連載していた生存報告の記事も、[WSOFTDocs](https://docs.wsoft.ws/)へ移行します。

生存報告のWSOFTDocsへの移行は、その誕生経緯や内容を鑑み、慎重に進行しています。現在、公開が可能と判断された記事を分類し、移行を開始しました。準備が整った記事から順に[生存報告Docs](https://docs.wsoft.ws/tokoyami)で公開しています。

### ご意見をお寄せください
WSOFTは、この計画への取り組みをを継続し、WSOFTのエコシステム全体について、簡単に必要なコンテンツが見つかり、それが見やすいものであるように努力していきます。[GitHub](https://github.com/WSOFT-Project/docs/issues)でみなさんのご意見をお寄せください。
