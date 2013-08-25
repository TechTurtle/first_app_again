class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :paypal_id
      t.string :email
      t.string :first_name
      t.string :middle_name
      t.string :last_name

      t.timestamps
    end
  end
end