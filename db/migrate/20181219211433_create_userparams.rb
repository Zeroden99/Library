class CreateUserparams < ActiveRecord::Migration[5.1]
  def change
    create_table :userparams do |t|
      t.string :name
      t.string :surname
      t.integer :age
      t.integer :user_id

      t.timestamps
    end
  end
end
