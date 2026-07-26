class CreateTasks < ActiveRecord::Migration[8.1]
  def change
    create_table :tasks do |t|
      t.string :content
      t.string :status
      t.string :due_date

      t.timestamps
    end
  end
end
