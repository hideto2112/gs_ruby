# ------------------
# テーブル作成用ファイル
# ------------------
require './common'

# accountsテーブルを作成
class CreateAccount < ActiveRecord::Migration[5.0]
    create_table :accounts do |t|
        t.column :name, :string
        t.column :gender, :string
        t.column :state, :string
        t.timestamps
    end
end