# DB設計

`まずは基本的な機能を実装し、後ほど機能を追加`
`userモデルに関してはdeviseを使用`

## usersテーブル 
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true|
### アソシエーション
- has_many :boards
- has_many :cards


## boardsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|user|references|null: false, foreign_key: true|
### アソシエーション
- belongs_to :user
- has_many :cards


## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|content|string|null: false|
|board|references|null: false, foreign_key: true|
### アソシエーション
- belongs_to :board


<!-- references型にすると
1.インデックスを自動的に貼る
2.カラム名をuserとしてもuser_idとして保存してくれる  -->