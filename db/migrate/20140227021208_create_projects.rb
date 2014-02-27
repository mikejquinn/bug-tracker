class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title, null: false, length: 100
      t.timestamps
    end
  end
end
