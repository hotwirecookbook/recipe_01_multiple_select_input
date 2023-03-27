class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.belongs_to :technology, null: false, foreign_key: true
      t.belongs_to :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
