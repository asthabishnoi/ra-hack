class CreateStatues < ActiveRecord::Migration[5.1]
  def change
    create_table :statues do |t|
      t.string :beacon_id
      t.string :name
      t.text :content
      t.string :link

      t.timestamps
    end
  end
end
