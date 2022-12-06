class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :image_url
      t.string :name
      t.string :institution
      t.string :gender
      t.string :bio
      t.string :user_id

      t.timestamps
    end
  end
end
