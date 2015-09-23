class TopGrossingController < ApplicationController
  def index
    @top_gross = Application.sorted_by_total_revenue.paginate(:page => params[:page], :per_page => 50)
  end

end
