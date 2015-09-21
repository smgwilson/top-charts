module ApplicationHelper
  def app_downloads(a)
    a.iphone_dwnld_cnt ||= 0 + a.ipad_dwnld_cnt ||= 0
  end

end
