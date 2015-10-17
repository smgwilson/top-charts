=begin
Only Free Apps (apps for which the price is zero) –
sorted by order of download count for “today”, with the most downloaded app first
limited to 400
=end

class TopFreeController < ApplicationController
  def index
    @free = App.free.sorted_by_download_count.paginate(:page => params[:page], :per_page => 50)
  end

end
