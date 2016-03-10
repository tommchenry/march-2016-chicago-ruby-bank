class AddAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|

      t.integer :balance
      t.integer :bank_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
