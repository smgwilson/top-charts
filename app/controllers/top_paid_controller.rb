class TopPaidController < ApplicationController
  def index
    @paid = Application.sorted_by_download_count
  end

  def show
  end
end
