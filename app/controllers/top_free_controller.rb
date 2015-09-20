class TopFreeController < ApplicationController
  def index
    @free = Application.free.sorted_by_download_count
  end

  def show
  end
end
