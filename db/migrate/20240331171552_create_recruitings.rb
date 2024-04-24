class CreateRecruitings < ActiveRecord::Migration[6.1]
  def change
    create_table :recruitings do |t|
      
    t.string :title,      null: false
    t.text :comment,      null: false
    t.datetime :datetime, null: false
    t.string :place,      null: false

      t.timestamps
    end
  end
end
