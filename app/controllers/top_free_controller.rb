class TopFreeController < ApplicationController
  def index
    @free = Application.free.sorted_by_download_count.paginate(:page => params[:page], :per_page => 50)
  end

end
