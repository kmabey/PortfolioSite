class HomeController < ApplicationController
  def index
    @project1 = Project.first
    @project2 = Project.last
    @about = Bio.first

  end

  def works
    @projects = Project.all
    @pts = Tech.all
  end

end
