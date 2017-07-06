class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :state
      t.string :street
      t.references :contact, foreign_key: true
      t.decimal :number

      t.timestamps
    end
  end
end
