---
title: DiscordのBotは多重人格の夢を見るか？
summary: 高1の時間の大部分を溶かしたAlice in Discordとは結局なんだったのか説明します。
date : 2022-11-22
---
### はじめに
ブログ記事ではお初にお目にかかります、[たい](https://twitter.com/WSOFT7)と申します。WebSailingやAliceScriptなどを開発している高校2年生の`自称プログラマー`で同人サークル「WSOFT」の団長もしています。

高校のクラスDiscord鯖でBotを開発し、**完成しないままクラス替えを迎えた**ので記事に残そうと思います。

### Alice in Discordとは？
私が高校に入学してまだ日の立たないうちに、私のクラスではクラスLINEならぬクラスDiscordサーバーができました

技術を持てばそれを誇示したくなるのが技術者の性。ついでに`自称プログラマ`の友達を増やしたかった私は、次の条件を満たすDiscordのBotを作り、鯖主に導入してもらうことを計画しました。

- 「おみくじ」や「時報」などの簡単に遊べる機能を実装する
- 誰でも簡単にBotのアイデアを形にして、すぐサーバーに導入できるようにする

この一連のプロジェクトはAliceProjectと名づけられ、matsuzenがキャラクターデザインを担当しました。

特に後者の機能を実装することに苦戦しました。そこには想像をはるかに超えた修羅の道が待っていました。

### 修羅の道
**誰でも簡単にBotのアイデアを形にして、すぐにサーバーに導入できるようにする**ということは、本来必要であった手順を代行するか、自動的に実行できるようにしなければならないことを意味します。さらに、（意図的でなくても）クラスメイトの誰かが問題のあるBotを導入してしまうとAliceProject全体の信頼を失ってしまうことになることも大きな問題です。

そこで、一人一人の考えたBotのプログラムを、ちょうど多重人格のように一つのBotから複数同時に実行し、それぞれのプログラムに何かあってもほかに影響しないように設計しました。この発想をもとに2021年7月から開発を進めましたが、ついに完成しませんでした。あまりにも作業量が膨大になったためです。

<div class="mermaid">
sequenceDiagram
    participant Botを使う人
    participant Alice in Discord
    Botを使う人 ->> Alice in Discord : Bobをプログラミング
    Note right of Botを使う人: ここでのBobは召喚したい人格（機能）を表す
    Botを使う人->>Alice in Discord: Bobを使いたい！
    Alice in Discord-->>Hyper-Alice: Bobを実行せよ
    Note right of Alice in Discord:たくさんの人格の中から実行したい<br/>ものを選択するのはHyper-Alice
    Hyper-Alice-->>Bob:実行
    Bob->>Alice in Discord:Hello,World!
    Alice in Discord->>Botを使う人:「Hello,World!」を表示
    Botを使う人->>Alice in Discord: Bobを終了したい
    Alice in Discord-->>Hyper-Alice: Bobを終了せよ
    Hyper-Alice-->>Bob:終了
    Bob-->>Hyper-Alice:Bobが終了したことを確認
    Hyper-Alice->>Botを使う人:Bobを終了しました
    Botを使う人->>Alice in Discord:Bobを廃棄
</div>

この図の通り、Alice in Discordにはまるでアプリをインストールするかのような手軽さで様々なBotを同時に実行することができる機能があります。

また、プログラムは簡単に記述でき、かつ、必要な機能は一通り備えている必要があります。そこで、人格のAlice in Discord内での振る舞い（つまり、Botの動作そのものを意味します）を定義するために`AliceScript`を開発しました。AliceScriptでプログラミングした人格は、その立ち振る舞いと、それに必要なデータや人格の基本設定などを一つにまとめて、人格ファイル（*.identity)となり、Hyper-Aliceで実行できるようになります。

<div class="mermaid">
graph TD;
    Botの振る舞いを指定するプログラム.alice -->人格ファイル.identity;
    その他の画像や音楽などのデータ-->人格ファイル.identity;
</div>
この仕組みは、のちにAlicePackageとなりました。
### Hyper-Aliceとは？
Hyper-Aliceは、一般的なコンピュータのOSに似ていて、Alice in Discordで展開される様々なプログラム（ここでは人格と呼ぶことにします）の面倒の一切を負うプログラムです。Hyper-Aliceには次のような機能があります。

- **人格を起動する**
- **人格を終了する**
- **人格を破壊する**　通常の処理で終了しようとしても終了しない人格は、Hyper-Aliceによって破壊されます。
- **人格を交代させる**　人格によってリクエストがあった場合に、その人格に処理を交代します。しかし、いつでも交代できるわけではなく、Hyper-Aliceがその必要性を判断したうえで交代させます。それに従わない人格は**破壊**されます。
これらの様々な機能を複雑に実装することで、Alice in Discordは安定して動作するはずでした。