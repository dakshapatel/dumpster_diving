class CreateDumpsters < ActiveRecord::Migration[5.2]
  def change
    create_table :dumpsters do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :address
      t.string :description

      t.timestamps
    end
  end
end
