class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :length
      t.text :description

      t.timestamps
    end
  end
end
