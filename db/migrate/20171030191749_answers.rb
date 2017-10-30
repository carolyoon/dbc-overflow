class Answers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :body
      t.references :author
      t.references :question

      t.timestamps
    end
  end
end
