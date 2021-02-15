class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :ethnicity
      t.string :gender_identity
      t.string :political_party
      t.string :location
      t.string :religion
      t.integer :currency
      t.string :username
      t.string :password_digest
      t.integer :wallet

      t.timestamps
    end
  end
end
