class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :string
      t.string :rut
      t.string :address

      t.timestamps
    end
  end
end
