class CreateAdoptedLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :adopted_languages do |t|
      t.references :user, null: false, foreign_key: true
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
