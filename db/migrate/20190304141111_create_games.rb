class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :user, foreign_key: true
      t.string :skill_level
      t.boolean :game_type, default: true
      t.date :date
      t.time :time
      t.text :additional_info
      t.string :status, default: "pending"

      t.timestamps
    end
  end
end