class CreateMeats < ActiveRecord::Migration
  def change
    create_table :meats do |t|
      t.string :name
      t.decimal :price

      t.timestamps null: false
    end
  end
end
