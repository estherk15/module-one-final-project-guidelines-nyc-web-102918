class ChangeReadToText < ActiveRecord::Migration[5.0]
  def change
    change_column :books, :read?, :text
  end
end
