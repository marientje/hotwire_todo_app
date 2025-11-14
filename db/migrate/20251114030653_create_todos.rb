class CreateTodos < ActiveRecord::Migration[8.1]
  def change
    create_table :todos do |t|
      t.string :name
      t.string :status, default: 'incomplete'

      t.timestamps
    end
  end
end
