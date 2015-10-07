require 'csv'

class Market
  include Mongoid::Document

  field :borough, type: String
  field :market_name, type: String
  field :street_addr, type: String
  field :days, type: String
  field :hours, type: String
  field :health_bucks, type: Boolean
  field :ebt, type: Boolean
  field :stellar, type: Boolean

end