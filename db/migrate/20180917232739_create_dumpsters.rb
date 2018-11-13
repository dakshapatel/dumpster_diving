class CreateDumpsters < ActiveRecord::Migration[5.2]
  def change
    create_table :dumpsters do |t|
      t.string :store_name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode

      t.timestamps
    end
  end
end
