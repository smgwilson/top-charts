class TopGrossingController < ApplicationController
  def index
    @top_gross = Application.all.take(400)
  end

  def show
  end
end
