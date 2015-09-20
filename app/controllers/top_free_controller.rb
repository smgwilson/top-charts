class TopFreeController < ApplicationController
  def index
    @free = Application.where(price: 0.00..0.00).take(400)
  end

  def show
  end
end
