class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :title, length: 255
      t.text :description, null: false
      t.timestamps
    end
  end
end
