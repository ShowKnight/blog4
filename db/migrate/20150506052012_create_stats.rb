class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.float :w1
      t.integer :s1
      t.integer :d1
      t.string :t1
      t.float :w2
      t.integer :s2
      t.integer :d2
      t.string :t2
      t.float :w3
      t.integer :s3
      t.integer :d3
      t.string :t3

      t.timestamps null: false
    end
  end
end
