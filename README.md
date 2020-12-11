## groups_users_table

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## users_table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null:false|

### Association
- has_many:groups_users
- has_many:grouts,through::groups_users
- has_many:massages

### groups_table

|Column|Type|Options|
|------|----|-------|
|name|string|null:false|

### Association
- has_many:groups_users
- has_many:users,through::groups_users
- has_many:messages

### messages_table

|Column|Type|Options|
|------|----|-------|
|content|text|
|image|text|
|user_id|integer|null:false,foreign_key:true|
|group_id|integer|null:false,foreign_key:true|

### Association
- belongs_to :group
- belongs_to :user

### lists_table

|Column|Type|Options|
|------|----|-------|
|lists|string|null:false|
|user|references|null:false,foreign_key:true|

### Cards

|Column|Type|Options|
|------|----|-------|
|title|string|null:false,limit:255|
|memo|text|limit:1000|
|list|references|null:false, foreign_key:true|
