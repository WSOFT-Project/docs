---
title: API
summary: WSOFTダウンロードセンターAPIは、WSOFTダウンロードセンターから提供されるリソースを他のプログラム等から呼び出し、ダウンロードや情報の取得をするためのAPIを提供します。 この記事は、WSOFTダウンロードセンターAPIを使用しようとしている技術者やソフトウェア開発者をターゲットにしています。
date : 2022-7-6
---
### はじめに
WSOFTダウンロードセンターAPIは、WSOFTダウンロードセンター内のコンテンツやその情報を取得、検索する機能を提供するWebサービスです。APIの使用には、利用規約への同意が必要です。
### 主なユースケース

- ハッシュを使用したダウンロードの正当性の検証
- WSOFTダウンロードセンターからファイルを取得するアプリケーションの開発
- 自分のコンテンツ内へのWSOFTダウンロードセンターから提供されるコンテンツの埋め込み

!!! warning
    WSOFTダウンロードセンターAPIによってコンテンツの埋め込みが可能であったとしても、コンテンツの権利者があなたのコンテンツへの埋め込みを許可するとは限りません。詳しくは、各コンテンツのページを参照するか、そのコンテンツの権利者にお問い合わせください。

### 使用方法
WSOFTダウンロードセンターAPIは、以下のサーバーで運用されています。

```url title="Url"
https://api.wsoft.ws/download
```

### バージョンの取得
次のリソースを開くと、WSOFTダウンロードセンターのバージョンまたはそのAPIのバージョンが取得できます。このメソッドにパラメータはありません。

```url title="Url"
https://api.wsoft.ws/download/version.json
```

```url title="Url"
https://download.wsoft.ws/version.json
```

#### 戻り値
バージョン情報がJSON形式で次のように返却されます。

```json title="version.json"
{
  "Product" : "{PRODUCT_NAME}",
  "CodeName" : "{CODE_NAME}",
  "Version" : "{VERSION}",
  "FullName" : "{FULL_NAME}"
}
```

|パラメータ|説明|
|---|---|
|Product|プロダクト名。WSOFTダウンロードセンターの場合はWSOFTDownloadCenterが、WSOFTダウンロードセンターAPIの場合はWSOFTDownloadCenter.APIが返却されます。|
|CodeName|コード名。現在、WSOFTダウンロードセンターの場合はchihayaが、WSOFTダウンロードセンターAPIの場合はchihayaⅡが返却されます。|
|Version|バージョン番号|
|FullName|製品の完全な名前。これは、「{Product} v{Version}({CodeName})」の形式で返却されます。|

#### 使用例
実際のWSOFTダウンロードセンターでのバージョンは[version.json](https://download.wsoft.ws/version.json)から、WSOFTダウンロードセンターAPIでのバージョンは[version.json](https://api.wsoft.ws/download/version.json)から取得できます。

### コンテンツの取得
GETまたはPOSTメソッドを使用して、WSOFTダウンロードセンター内にあるコンテンツを直接取得します。

```url title="Url"
https://api.wsoft.ws/download/resource
```

|パラメータ|説明|
|---|---|
|id|取得したいコンテンツのダウンロードID|
|key|取得したいコンテンツのダウンロードキー。この値は省略できます。|

#### 戻り値
取得したコンテンツのバイナリがそのまま返却されます。

#### 使用例
次の例では、ダウンロードIDがWS0000のコンテンツを取得します。

```url title="Url"
https://api.wsoft.ws/download/resource?id=0
```

!!! tip "WSOFTダウンロードセンターへのリンクとの違い"
    WSOFTダウンロードセンターでは、コンテンツの取り扱いを指定するヘッダーである、Content-Dispositionが、ダウンロードさせることを要求するattachmentに設定されています。しかし、WSOFTダウンロードセンターAPI空の呼び出しでは、Webページのコンテンツとして扱うinlineに設定されます。他にも、ファイル名が提供されなかったり、直接ダウンロードキーを指定してダウンロードできるなどの相違点があります。

###  コンテンツの情報の取得
GETまたはPOSTメソッドを使用して、WSOFTダウンロードセンター内にあるコンテンツの情報を取得します。

```url title="Url"
https://api.wsoft.ws/download/detail
```

|パラメータ|説明|
|---|---|
|id|取得したいコンテンツのダウンロードID|

#### 戻り値
取得したコンテンツの情報がJSON形式で次のように返却されます。

```json title="https://api.wsoft.ws/download/detail"
{
  "Status" : "{STATUS}",
  "Request_ID" : "{ID}",
  "Now" : "{ACCEPTED_DATETIME}",
  "Copyright" : "{CONTENT_COPYRIGHT_INFO}"
  "Release_Date" : "{CONTENT_RELEASED_DATE}",
  "Description" : "{CONTENT_DESCRIPTION}",
  "FileName" : "{CONTENT_FILENAME}",
  "Hash" : "{CONTENT_SHA512_HASH}"
  "Licence" : "{CONTENT_LICENCE_INFO}",
  "Licence_Url" : "{CONTENT_LICENCE_INFO_URL}",
  "MIME" : "{CONTENT_MIME_TYPE}",
  "FileSize" : "{CONTENT_FILE_SIZE}"
  "Tags" : "{CONTENT_TAGS_TEXT}",
  "Title" : "{CONTENT_TITLE}",
  "Version" : "{CONTENT_VERSION}",
  "Support_Seartch" : "{IS_VISIBLE_IN_SEARTCHES}"
  "Support_Preview" : "{IS_SUPPORT_PREVIEW}"
}
```

|パラメータ|説明|
|---|---|
|Status|取得に成功すればFoundが、ダウンロードIDが見つからない場合はNotFoundが、ダウンロードキーが異なる場合はWrong_DownloadKeyが、その他の例外が発生した場合はService_Unavailableが返却されます。|
|Request_ID|要求したダウンロードID|
|Now|要求を受理あるいは棄却した日付と時刻|
|Copyright|要求したコンテンツの著作権情報|
|Release_Date|要求したコンテンツの公開日。yyyy-MM-ddの形式で返却されます。|
|Description|要求したコンテンツの説明|
|FileName|要求したコンテンツのファイル名|
|Hash|要求したコンテンツのSHA512チェックサム|
|License|要求したコンテンツのライセンス情報|
|License_Url|要求したコンテンツの提供者が指定したライセンスの詳細情報へのUrl|
|MIME|要求したコンテンツのMIME|
|FileSize|要求したコンテンツのファイルサイズを表す文字列|
|Tags|要求したコンテンツに関連付けられたタグ。タグは#{TAG_TEXT}:{COLOR_CODE}の形式で返却されます。|
|Title|要求したコンテンツのタイトル|
|Version|要求したコンテンツのバージョン|
|Support_Seartch|要求したコンテンツが一覧や検索に表示されるか否かを表す値。表示される場合はtrue、それ以外の場合はfalse。|
|Support_Preview|要求したコンテンツがファイルのプレビューをサポートするか否かを表す値。サポートする場合はtrue、それ以外の場合はfalse。|

#### 使用例
次の例では、ダウンロードIDがWS0000のコンテンツの情報を取得します。

```url title="Url"
https://api.wsoft.ws/download/detail?id=0
```

### コンテンツの検索
GETまたはPOSTメソッドを使用して、WSOFTダウンロードセンター内にあるコンテンツの情報を取得します。

```url title="Url"
https://api.wsoft.ws/download/seartch
```

|パラメータ|説明|
|---|---|
|query|検索するクエリ|

#### 戻り値
取得したコンテンツの情報がJSON形式で次のように返却されます。

```json title="https://api.wsoft.ws/download/seartch"
{
  "Status" : "{STATUS}",
  "Request_Query" : "{SEARTCH_QUERY}",
  "Now" : "{ACCEPTED_DATETIME}",
  "ID" : "{FOUND_CONTENT_ID}"
}
```

|パラメータ|説明|
|---|---|
|Status|クエリに適合するコンテンツが見つかった場合はFoundが、見つからない場合はNotFoundが、ダウンロードキーが異なる場合はWrong_DownloadKeyが、その他の例外が発生した場合はService_Unavailableが返却されます。|
|Request_Query|要求したクエリ|
|Now|要求を受理あるいは棄却した日付と時刻|
|ID|要求したクエリに適合するコンテンツのID。この項目は適合するコンテンツが見つかる限りいくつでも繰り返されます。|

#### 使用例
次の例では、クエリ*を実行し、WSOFTダウンロードセンター内で公開されているすべての検索可能なコンテンツを取得します。

```url title="Url"
https://api.wsoft.ws/download/seartch?query=*
```

### エラー
エラーはJSON形式で次のように返却されます。

```json title="エラー"
{
  "Status" : "{STATUS}",
  "Request_ID" : "{ID}",
  "Now" : "{REJECTED_DATETIME}"
}
```

!!! note
    NotFoundエラーが発生した場合はHTTPステータスコード404が、それ以外の場合は200が返却されます。

|パラメータ|説明|
|---|---|
|Status|エラーの内容。ダウンロードIDが見つからない場合はNotFoundが、ダウンロードキーが異なる場合はWrong_DownloadKeyが、その他の例外が発生した場合はService_Unavailableが返却されます。|
|Request_ID|要求したダウンロードID|
|Now|要求を棄却あるいは失敗した日付と時刻|
