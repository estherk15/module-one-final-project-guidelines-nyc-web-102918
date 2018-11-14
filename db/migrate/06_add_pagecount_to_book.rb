class AddPagecountToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :pagecount, :integer
  end
end
