class TopPaidController < ApplicationController
  def index
    @paid = Application.where(price: 0.01..Float::INFINITY)
  end

  def show
  end
end
