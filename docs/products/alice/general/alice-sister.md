---
title : AliceSister
summary : この記事では、AliceScriptの公式の実装である、AliceSisterについて説明します。
date : 2022-04-26
---
AliceSisterは、.NETFramework上で動作するWindows向けの[AliceModel](./saim.md)の実装です。AliceSisterは、AliceModelを対象とするアプリケーションを管理する実行環境と、プログラマがアプリ開発のあらゆる場面で使用できるAlice.Runtime、Windows固有の機能を実装するAlice.Windowsから構成されています。

ALiceSisterはアプリケーションに次の機能を提供します。

- **実装の互換性** 一部のケースを除き、特定のバージョンの[AliceModel](./saim.md)をターゲットに開発されたアプリケーションは、同じバージョンのAliceScriptで問題なく実行できます。
- **異なるバージョンの共存** AliceModelは、同じコンピュータに複数の異なるバージョンや実装が共存でき、バージョン間の競合の解決に役立ちます。これは、複数の異なるバージョンのアプリがコンピュータ内で共存して実行できることも意味します。
- **広範囲にわたるライブラリ** 一般的によく使われる操作のセットを含むAlice.Runtimeを使用することで、簡単に複雑な操作を含むアプリケーションを開発できます。

!!!note "注意"
    AliceSisterは、AliceScriptの開発に追従して、AliceModelの実装に加え、できるだけAliceScriptと同じ機能が提供されます。
    現在のところAliceSisterは引き続き開発され、それが終了する予定はありません。すでに開発されているAliceSister専用アプリは移行する必要はありませんが、新規開発においてはできるだけAliceModelの各実装に依存しないコードを使うとともに、ターゲットの限定が必要な場合はAliceScriptをご使用されることをお勧めします。

### ユーザーにとってのAliceSister
AliceScriptアプリを開発しなくても、それを使用するユーザーはAliceSisterやその操作に関する知識を持つ必要はありません。ほとんどの場合、AliceSisterはユーザーにとっては完全に透過的に機能します。

ユーザーの皆さんがこのページに辿り着いたほとんどの理由は、コンピュータにAliceSisterのインストールが必要などと言われているからでしょう。このセクションでは、AliceSisterを導入して、AliceSisterが必要なアプリケーションを動作させる方法を解説します。

#### .NETFrameworkの導入
まず、あなたのコンピュータでAliceSisterを導入する前に、コンピュータに.NETFramework4.5.2以降がインストールされている必要があります。これは、Windows10以降でデフォルト、Windowws7以降でWindowsUpdateを介して導入されているようですが、もしインストールされていない場合は手動でインストールする必要があるかもしれません。.NETFrameworkの導入に関する質問は、WSOFTで対応することができません。次のMicrosoftのガイドを参照してください。

- [.NETFramework インストールガイド](https://learn.microsoft.com/ja-jp/dotnet/framework/install/)
- [インストールされている .NET Framework バージョンを確認する](https://learn.microsoft.com/ja-jp/dotnet/framework/migration-guide/how-to-determine-which-versions-are-installed)