class Votes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.integer :vote_value
      t.references :voter
      t.integer :votable_id
      t.string :votable_type

      t.timestamps
    end
  end
end
