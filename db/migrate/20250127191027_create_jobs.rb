class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :link
      t.string :description
      t.date :deadline
      t.integer :user_id
      t.string :category

      t.timestamps
    end
  end
end
