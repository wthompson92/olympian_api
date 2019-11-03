class CreateOlympians < ActiveRecord::Migration[5.2]
  def change
    create_table :olympians do |t|
      t.string :name
      t.string :team
      t.string :sex
      t.integer :age
      t.integer :weight
      t.references :sport, index: true
      t.integer :medal_count, default: 0
      t.timestamps
    end
  end
end
