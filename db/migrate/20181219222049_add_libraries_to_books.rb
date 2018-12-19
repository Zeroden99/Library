class AddLibrariesToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :libraries, :string
  end
end
