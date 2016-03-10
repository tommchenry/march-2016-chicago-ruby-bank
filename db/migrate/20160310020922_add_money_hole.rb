class AddMoneyHole < ActiveRecord::Migration
  def change
     create_table :moneyholes do |t|
      t.string :name
      
      t.timestamps null: false
    end
  end
end
