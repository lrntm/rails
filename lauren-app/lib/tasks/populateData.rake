namespace :market do
	desc "reads in csv file and populates database with dataset"
	task populateData: :environment do
		puts "starting to read in CSV"

		require 'csv'

		file = Rails.root.join('app', 'assets', 'csvs', 'nycmarkets.csv')

		CSV.foreach(file, :headers => true, :col_sep => ',') do |row|
			Market.create(:borough => row['Borough'], :market_name => row['Market Name'], :street_addr => row['Street Address'], :days => row['Day(s)'], :hours => row['Hours'], :health_bucks => row['Distribute Health Bucks'], :ebt => row['EBT'], :stellar => row['Stellar'])

		end
	end
end
