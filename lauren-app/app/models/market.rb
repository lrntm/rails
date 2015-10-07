require 'csv'

class market
  include Mongoid::Document

  field :borough, type: String
  field :market_name, type: String
  field :street_addr, type: String
  field :days, type: String
  field :hours, type: String
  field :health_bucks, type: Boolean
  field :ebt, type: Boolean
  field :stellar, type: Boolean

  def self.populate_data_from_csv
    file_path = Rails.root.join 'app', 'assets', 'csvs', 'names.csv'
    CSV.foreach(file_path, :headers => true, :col_sep => ',') do |row|
      Name.create(:birth_year => row['BRTH_YR'], :gender => row['GNDR'], :ethnicity => row['ETHCTY'], :name => row['NM'], :count => row['CNT'], :rank => row['RNK'])
    end
  end

end