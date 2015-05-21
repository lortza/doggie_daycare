class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.references :breed, index: true, foreign_key: true
      t.date :birth_date
      t.references :owner, index: true, foreign_key: true
      t.references :vet, index: true, foreign_key: true
      t.boolean :in_daycare

      t.timestamps null: false
    end
  end
end
