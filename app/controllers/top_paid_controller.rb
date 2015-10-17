=begin
Only Paid Apps (apps for which the price is greater than zero) –
sorted by order of download count for “today”, with the most downloaded app first
limited to 400
=end

class TopPaidController < ApplicationController
  def index
    @paid = App.paid.sorted_by_download_count.paginate(:page => params[:page], :per_page => 50)
  end

end
