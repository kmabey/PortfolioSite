class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.date :start_date
      t.date :finish_date
      t.text :description

      t.timestamps
    end


  end
end
