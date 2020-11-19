class CreateYwamBases < ActiveRecord::Migration[6.0]
  def change
    create_table :ywam_bases do |t|
      t.string :name
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end
