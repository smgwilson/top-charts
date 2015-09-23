class TopPaidController < ApplicationController
  def index
    @paid = Application.paid.sorted_by_download_count.paginate(:page => params[:page], :per_page => 50)
  end

  def show
  end
end
