class Questions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :body
      t.string :title
      t.references :author

      t.timestamps
    end
  end
end
