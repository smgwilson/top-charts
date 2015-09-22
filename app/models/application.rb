class Application

  include Mongoid::Document
  include Mongoid::Timestamps
  field :an, as: :app_name
  field :ac, as: :app_company
  field :ai, as: :app_icon
  field :au, as: :app_url
  field :r, as: :rating, type: Float
  field :p, as: :price, type: Float
  field :grc, as: :global_rating_cnt, type: Integer, default: 0
  field :crc, as: :country_rating_cnt, type: Integer, default: 0
  field :cvrc, as: :crrnt_vrsn_rating_cnt, type: Integer, default: 0
  field :phdc, as: :iphone_dwnld_cnt, type: Integer, default: 0
  field :pddc, as: :ipad_dwnld_cnt, type: Integer, default: 0
  field :ip, as: :inapp_purchase, type: Mongoid::Boolean
  field :phr, as: :iphone_revenue
  field :pdr, as: :ipad_revenue

  scope :free, -> { where(price: 0.00..0.00) }
  scope :paid, -> { where(price: 0.01..1000000.00)}


  def download_count
    (self.pddc ||= 0) + (self.phdc ||= 0)
  end

  def revenue_count
    ph_revenue = self.phr.gsub(/[^0-9]/, '').to_i
    pd_revenue = self.pdr.gsub(/[^0-9]/, '').to_i
    (ph_revenue ||= 0) + (pd_revenue ||= 0)
  end

  def self.sorted_by_download_count
    Application.all.sort_by(&:download_count).reverse.take(400)
  end

  def self.sorted_by_total_revenue
    Application.all.sort_by(&:revenue_count).reverse.take(400)
  end

end


