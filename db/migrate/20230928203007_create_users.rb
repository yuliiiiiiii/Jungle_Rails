#this is auto generated when runnig this in terminal:
#bin/rails generate model user first_name last_name email password_digest
class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
