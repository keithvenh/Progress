class CreateLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :languages do |t|
      t.string :country_id
      t.string :country
      t.string :language_code
      t.string :language

      t.timestamps
    end
  end
end
