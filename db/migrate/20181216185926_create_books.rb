class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.integer :user_id
      t.string :name
      t.string :body

      t.timestamps
    end
  end
end
