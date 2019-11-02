require 'csv'

task :import => [:environment] do
  stats_file = "db/csv/stats.csv"

  stats = []
  converter = lambda { |header| header.downcase }
  CSV.foreach(stats_file, :headers => true, header_converters: converter) do |row|
    row.headers.map do |header|
      header.downcase
      stats << row.to_hash
    end
  end
  RawDatum.import!(stats)
  p "Stats imported"

end
