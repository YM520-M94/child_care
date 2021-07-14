class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.datetime   :date,    null: false 
      t.string     :weather, null: false 
      t.string     :title,   null: false 
      t.text       :diary,   null: false 
      t.references :user,    null: false, foreign_key: true 
      t.timestamps
    end
  end
end
