class Application
  include Mongoid::Document
  include Mongoid::Timestamps
  field :an, as: :app_name, type: String
  field :ac, as: :app_company, type: String
  field :ai, as: :app_icon, type: String
  field :au, as: :app_url, type: String
  field :r, as: :rating, type: Float
  field :p, as: :price, type: Float
  field :grc, as: :global_rating_cnt, type: Integer
  field :crc, as: :country_rating_cnt, type: Integer
  field :cvrc, as: :crrnt_vrsn_rating_cnt, type: Integer
  field :phdc, as: :iphone_dwnld_cnt, type: Integer
  field :pddc, as: :ipad_dwnld_cnt, type: Integer
  field :ip, as: :inapp_purchase, type: Mongoid::Boolean
  field :phr, as: :iphone_revenue, type: String
  field :pdr, as: :ipad_revenue, type: String
end
