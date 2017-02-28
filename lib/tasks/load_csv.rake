require 'csv'

namespace :csv do
  task :import => :environment do
    # Clear existing database data
    Stock.delete_all

    for csv_file in ['nasdaq', 'nyse', 'amex']
      puts "Loading from file #{csv_file}.csv"
      csv_text = File.read("db/src/#{csv_file}.csv")
      csv = CSV.parse(csv_text, :headers => true)
      csv.each do |row|
        puts "Creating entry for #{row['Symbol']}"
        Stock.create!(:symbol => row['Symbol'], :name => row['Name'])
      end
    end
  end
end