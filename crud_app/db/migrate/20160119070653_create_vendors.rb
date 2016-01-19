class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :currency
      t.string :codename
      t.string :free_shipping

      t.timestamps null: false
    end
  end
end
