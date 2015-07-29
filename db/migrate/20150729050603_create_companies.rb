class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :country_code
      t.string :name

      t.timestamps null: false
    end
  end
end
