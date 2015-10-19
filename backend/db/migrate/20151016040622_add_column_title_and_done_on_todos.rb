class AddColumnTitleAndDoneOnTodos < ActiveRecord::Migration
  def change
    add_column :todos, :title,:string
    add_column :todos, :done,:boolean
  end
end
