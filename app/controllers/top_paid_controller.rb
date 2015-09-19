class TopPaidController < ApplicationController
  def index
    @paid = Application.all
  end

  def show
  end
end
