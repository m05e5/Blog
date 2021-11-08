class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :Bio
      t.string :photo
      t.integer :PostsCounter

      t.timestamps
    end
  end
end