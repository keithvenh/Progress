class CreateLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :languages do |t|
      t.string :region
      t.string :country
      t.string :language_code
      t.string :language
      t.integer :population

      t.timestamps
    end
  end
end
