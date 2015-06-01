class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :roomid
      t.string :name
      t.boolean :free
      t.string :user
      t.date :sdate

      t.timestamps
    end
  end
end
