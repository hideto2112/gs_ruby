require './common'

class CreateUsers < ActiveRecord::Migration[5.0]
    create_table :users do |t|
        t.column :gender, :string
        t.column :age, :integer
        t.timestamps
    end
end