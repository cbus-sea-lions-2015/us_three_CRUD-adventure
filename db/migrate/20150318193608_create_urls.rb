class CreateUrls < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :secret_word

      t.timestamps
    end

    create_table :animals do |t|
      t.string :name
      t.references :user
      t.references :species
      t.references :location

      t.timestamps
    end

    create_table :locations do |t|
      t.string :name

      t.timestamps
    end

     create_table :species do |t|
      t.string :name

      t.timestamps
    end
  end
end
