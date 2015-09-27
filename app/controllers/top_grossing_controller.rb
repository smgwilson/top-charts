=begin
Top Grossing Apps (all apps) – list , sorted by their download revenue for today)
limited to 400
=end

class TopGrossingController < ApplicationController
  def index
    @top_gross = Application.sorted_by_total_revenue.paginate(:page => params[:page], :per_page => 50)
  end

end
