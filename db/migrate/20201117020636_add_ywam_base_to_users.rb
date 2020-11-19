class AddYwamBaseToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :ywam_base, null: false, foreign_key: true
  end
end
