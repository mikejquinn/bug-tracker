class CreateBugStatuses < ActiveRecord::Migration
  def change
    create_table :bug_statuses do |t|
      t.string :description
    end

    change_table :bugs do |t|
      t.integer :bug_status_id, null: false
    end

    add_foreign_key :bugs, :bug_statuses
  end
end
