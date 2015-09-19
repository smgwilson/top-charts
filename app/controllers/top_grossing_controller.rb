class TopGrossingController < ApplicationController
  def index
    @top_gross = Application.all
  end

  def show
  end
end
