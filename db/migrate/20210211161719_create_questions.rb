class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer :creator_id
      t.string :question
      t.integer :reward
      t.string :option1
      t.string :option2

      t.timestamps
    end
  end
end
