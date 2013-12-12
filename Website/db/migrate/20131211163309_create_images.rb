class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.belongs_to :project
      t.string :name
      t.integer :project_id

      t.timestamps
    end
  end
end
