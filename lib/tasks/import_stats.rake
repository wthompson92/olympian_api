require 'csv'

task :import => [:environment] do
  stats_file = "db/csv/stats.csv"

  converter = lambda { |header| header.downcase }
  CSV.foreach(stats_file, :headers => true) do |row|
    # row[:name]
    # row[:sex]
    # row[:age]
    # row[:age]
    # row[:height]
    # row[:weight]
    # row[:team]
    # row[:sport]
    # row[:event]

   sport = Sport.find_or_create_by(name: row['Sport'])

   olympian = Olympian.find_or_create_by(
      name: row['Name'],
      age: row['Age'],
      sex: row['Sex'],
      weight: row['Weight'],
      sport: sport,
      team: row['Team'])

   event = Event.find_or_create_by(
      name: row["Event"],
      sport: sport)
  end

end
