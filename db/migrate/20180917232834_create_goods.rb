class CreateGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :goods do |t|
      t.string :name 
      t.integer :user_id
      t.integer :dumpster_id
      t.timestamps
    end
  end
end
