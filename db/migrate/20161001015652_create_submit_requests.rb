class CreateSubmitRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :submit_requests do |t|
      t.references :task, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :charge_id, null: false
      t.integer :status
      t.text :message

      t.timestamps
    end
  end
end
