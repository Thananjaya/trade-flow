class CreateOrganisation < ActiveRecord::Migration[7.1]
  def change
    create_table :organisations do |t|
      t.string :name, null: false, index: {unique: true, name: 'organisation_names', comment: 'index meant for looking names of organisation'}
      t.string :avatar
      t.string :tax_no
      t.string :address
      t.string :city
      t.string :pin

      t.timestamps
    end

    change_table_comment(:organisations, from: nil , to: 'Organisation table, primary table for its dependents')
  end
end
