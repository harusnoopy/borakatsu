class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|

      t.references :user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
    add_index :favorites, [:user_id, :event_id], unique: true
  end
end
