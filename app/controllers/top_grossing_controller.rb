class TopGrossingController < ApplicationController
  def index
    @top_gross = Application.sorted_by_total_revenue
  end

  def show
  end
end
