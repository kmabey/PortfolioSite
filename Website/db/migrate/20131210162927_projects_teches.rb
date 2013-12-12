class ProjectsTeches < ActiveRecord::Migration
  def change

    create_table :projects_teches do |t|
      t.belongs_to :project
      t.belongs_to :teches
    end

  end
end
