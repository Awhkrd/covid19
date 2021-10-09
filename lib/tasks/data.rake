require 'open-uri'
require 'json'
require 'csv'

namespace :data do
  desc 'Generate yesterday record from csv file'
  task generate_records: :environment do
    raw_data = URI.open('https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports/09-24-2021.csv')
    parse_data = CSV.parse(raw_data, headers: true)
    parse_data.each do |line|
      country = Country.find_or_create_by(name: line["Country_Region"])
      country.update(name: line["Country_Region"])
      region = country.regions.find_or_create_by(region_code: line["Province_State"])
      region.update(name: line["Admin2"],
                    region_code: line["Province_State"],
                    latitude: line["Lat"].to_f,
                    longitude: line["Long_"].to_f)
      record = region.records.find_or_create_by(region: region)
      record.update(confirmed: line["Confirmed"].to_i,
                    death: line["Deaths"].to_i,
                    recovered: line["Recovered"].to_i,
                    active: line["Active"].to_i)
    end

  end
end
