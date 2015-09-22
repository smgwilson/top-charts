class TopPaidController < ApplicationController
  def index
    @paid = Application.paid.sorted_by_download_count
  end

  def show
  end
end
