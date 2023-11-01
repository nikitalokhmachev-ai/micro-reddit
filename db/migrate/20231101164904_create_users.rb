class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.text :bio
      t.integer :age
      t.boolean :is_banned

      t.timestamps
    end
  end
end
