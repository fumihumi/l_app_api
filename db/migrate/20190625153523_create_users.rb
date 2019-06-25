class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, unique: true, index: true
      t.string :nickname, unique: true, index: true
      t.timestamps
    end
  end
end
