class HomeController < ApplicationController
  def index
    @chart = Gchart.pie_3d(
                           :size => '400x180',
                           :data => [10, 5, 5, 45, 35],
                           :labels => ["JavaScript","C#","Ruby", "HTML5", "CSS3"],
                           :background => '2E3338',
                           :chart_background => '2E3338')

  end
end
