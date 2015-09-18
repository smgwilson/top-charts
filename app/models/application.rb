class Application
  include Mongoid::Document
  field :app_name, type: String
  field :app_company, type: String
  field :app_icon, type: String
  field :app_url, type: String
  field :rating, type: Float
  field :price, type: Float
  field :global_rating_cnt, type: Integer
  field :country_rating_cnt, type: Integer
  field :crrnt_vrsn_rating_cnt, type: Integer
  field :iphone_dwnld_cnt, type: Integer
  field :ipad_dwnld_cnt, type: Integer
  field :inapp_purchase, type: Mongoid::Boolean
  field :iphone_revenue, type: String
  field :ipad_revenue, type: String
end
