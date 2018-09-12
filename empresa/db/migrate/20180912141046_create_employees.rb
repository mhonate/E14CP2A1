class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :las_name
      t.string :email
      t.references :company, foreign_key: true
      t.references :area, foreign_key: true

      t.timestamps
    end
  end
end
