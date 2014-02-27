class AddProjectDescription < ActiveRecord::Migration
  def change
    change_table :projects do |p|
      p.string :description, null: false, length: 255
    end
  end
end
