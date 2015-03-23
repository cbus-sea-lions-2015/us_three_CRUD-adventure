class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :long_url
      t.string :short_url
      t.integer :clicks, default: 0
      t.references :user

      t.timestamps
    end

    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :secret_word

      t.timestamps
    end
  end
end
