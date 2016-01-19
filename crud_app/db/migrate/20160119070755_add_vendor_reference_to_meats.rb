class AddVendorReferenceToMeats < ActiveRecord::Migration
  def change
    add_reference :meats, :vendor, index: true, foreign_key: true
  end
end
