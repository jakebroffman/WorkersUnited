class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :name
      t.string :local_chapter
      t.string :email
      t.string :city
      t.string :state
      t.string :profile_photo_url
      t.string :password_digest

      t.timestamps
    end
  end
end
