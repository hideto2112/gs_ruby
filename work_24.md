# find_or_created_by
会社（companies）テーブルの会社名（company_name）が「◯◯会社」というデータが登録されている。
## 既にDB上に登録されたデータを保存しようとしたとき
会社名（company_name）が「◯◯会社」というデータを登録しようとする。
- 保存されたか? 
保存されなかった

- 何が行われたか？

```sql:生成されたSQL文
SELECT  `companies`.* FROM `companies` WHERE `companies`.`company_name` = '◯◯会社' LIMIT 1
```
生成されたSQL文よりSELECT文は生成されていたが、INSERT文は生成されていなかった。

## DB上に登録されていないデータを保存しようとしたとき
会社名（company_name）が「△△会社」というデータを登録しようとする。
- 保存されたか? 
保存された

- 何が行われたか？

```sql:生成されたSQL文
SELECT  `companies`.* FROM `companies` WHERE `companies`.`company_name` = '△△会社' LIMIT 1
INSERT INTO `companies` (`company_name`, `created_at`, `updated_at`) VALUES ('△△会社', '2018-08-03 17:06:31', '2018-08-03 17:06:31')
```
生成されたSQL文よりSELECT文が生成された後に、INSERT文が生成されていた。

## まとめ
まず、SELECT文が生成・実行され、DB上にデータが見つかれなければ、INSERT文が生成・実行される。