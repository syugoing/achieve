class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :content
      t.datetime :deadline
      t.integer :charge_id, null: false
      t.boolean :done, default: false
      t.integer :status, default: 0
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
