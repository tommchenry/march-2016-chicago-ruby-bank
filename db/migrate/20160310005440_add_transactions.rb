class AddTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :account_id
      t.integer :balance_change

      t.timestamps null: false
    end
  end
end
