class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :theme
      t.datetime :date
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
