class AddIndexToPeople < ActiveRecord::Migration
  def change
    add_index :people, :company_id
  end
end
