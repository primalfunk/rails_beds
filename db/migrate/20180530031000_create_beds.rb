class CreateBeds < ActiveRecord::Migration[5.2]
  def change
    create_table :beds do |t|
      t.string :title
      t.string :manu
      t.string :model
      t.float :price
      t.string :rating

      t.timestamps
    end
  end
end
