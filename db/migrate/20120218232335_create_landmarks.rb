class CreateLandmarks < ActiveRecord::Migration
  def change
    create_table :landmarks do |t|
      t.string :name
      t.string :address
      t.string :primary_use

      t.timestamps
    end
  end
end
