class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name, unique: true, index: true
      t.timestamps
    end
  end
end
