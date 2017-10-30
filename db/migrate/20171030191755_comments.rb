class Comments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :body
      t.references :author
      t.integer :commentable_id
      t.string :commentable_type

      t.timestamps
    end
  end
end
