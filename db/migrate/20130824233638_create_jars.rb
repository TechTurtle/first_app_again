class CreateJars < ActiveRecord::Migration
  def change
    create_table :jars do |t|
      t.string :name
      t.string :description
      t.datetime :start_time
      t.datetime :end_time
      t.integer :goal
      t.integer :user_id
      t.integer :amount1
      t.integer :amount2
      t.integer :amount3
      t.integer :amount4
      t.boolean :active

      t.timestamps
    end
  end
end
