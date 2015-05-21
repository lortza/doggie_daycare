class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.boolean :signed_waiver
      t.string :emerg_contact
      t.string :emerg_phone

      t.timestamps null: false
    end
  end
end
