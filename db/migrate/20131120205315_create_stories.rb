class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.text :story
      t.date :date
      t.boolean :featured, default: false
      t.timestamps
    end
  end
end
