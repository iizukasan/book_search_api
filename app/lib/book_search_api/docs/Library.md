# BookSearchApiClient::Library

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **libid** | **Integer** | 図書館のユニークID | [optional] |
| **formal** | **String** | 正式名称 | [optional] |
| **short** | **String** | 略称 | [optional] |
| **systemid** | **String** | システムID | [optional] |
| **systemname** | **String** | システム名称 | [optional] |
| **libkey** | **String** | システム毎の図書館キー | [optional] |
| **category** | **String** | カテゴリー | [optional] |
| **post** | **String** | 郵便番号 | [optional] |
| **tel** | **String** | 電話番号 | [optional] |
| **pref** | **String** | 都道府県 | [optional] |
| **city** | **String** | 市町村 | [optional] |
| **address** | **String** | 住所 | [optional] |
| **geocode** | **String** | 位置情報 | [optional] |
| **isil** | **String** | ISIL | [optional] |
| **faid** | **String** | 参加組織ID | [optional] |
| **url_pc** | **String** | PC版ウェブサイト | [optional] |

## Example

```ruby
require 'book_search_api_client'

instance = BookSearchApiClient::Library.new(
  libid: 104106,
  formal: 国立国会図書館 東京本館,
  short: 東京本館,
  systemid: Tokyo_NDL,
  systemname: 国立国会図書館,
  libkey: 東京本館,
  category: LARGE,
  post: 100-8924,
  tel: 03-3581-2331,
  pref: 東京都,
  city: 千代田区,
  address: 東京都千代田区永田町1-10-1,
  geocode: 139.744202,35.6783682,
  isil: JP-1000001,
  faid: FA012345,
  url_pc: http://www.ndl.go.jp
)
```

