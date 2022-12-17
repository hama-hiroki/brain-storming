## アプリケーション名
Brain Storming

## アプリケーション概要






## users テーブル

| Column                  | Type          | Options                        |
| -------------------     | --------      | ------------------------------ |
| email                   | string        | null: false, unipue: true |
| encrypted_password      | string        | null: false                    |
| last_name               | string        | null: false                    |
| first_name              | string        | null: false                    |

### Association
- has_many :Topics


## Topics テーブル

| Column                        | Type          | Options                        |
| -------------------     | --------    | ------------------------------ |
| user                              | references | null: false, foreign_key: true |
| topic_item                    | string         | null: false                    |

### Association
- belongs_to :user
- has_many   :items
- has_many   :sub_items


## items テーブル

| Column        | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| topic             | references | null: false, foreign_key: true |
| item              | string         | null: false                    |

### Association
- belongs_to :topic
- has_many   :sub_items


## sub_items テーブル

| Column        | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| topic             | references | null: false, foreign_key: true |
| item              | references | null: false, foreign_key: true |
| sub_item      | string         | null: false                    |

### Association
- belongs_to :topic
- belongs_to :item

