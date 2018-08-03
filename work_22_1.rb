# ------------------
# テーブル作成用ファイル
# ------------------
require './common'

# 会社テーブルを作成
class CreateCompanies < ActiveRecord::Migration[5.0]
    create_table :companies do |t|
        t.column :company_name, :string
        t.timestamps
    end
end

# 部署テーブルを作成
class CreateDepartments < ActiveRecord::Migration[5.0]
    create_table :departments do |t|
        t.column :company_id, :integer
        t.column :department_name, :string
        t.timestamps
    end
end