class CreateAdministrators < ActiveRecord::Migration[7.1]
  def change
    create_table :administrators do |t|
      t.string :first_name, null: false
      t.string :last_name
      t.string :phone, null: false
      t.string :email, null: false
      t.boolean :verified, default: false

      t.timestamps
    end
  end
end
