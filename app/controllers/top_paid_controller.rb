class TopPaidController < ApplicationController
  def index
    @paid = Application.where(price: 0.01..Float::INFINITY).take(400)
  end

  def show
  end
end
