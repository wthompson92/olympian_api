class CreateMedals < ActiveRecord::Migration[5.2]
  def change
    create_table :medals do |t|
      t.string :name
      t.references :olympian, index: true
      t.references :event, index: true
      t.timestamps
    end
  end
end
