class CreateHumen < ActiveRecord::Migration
  def change
    create_table :humen do |t|
      t.string :name
      t.integer :age
      t.text :address
      t.string :gender
      t.string :phone
      t.timestamps null: false
    end
  end
end
