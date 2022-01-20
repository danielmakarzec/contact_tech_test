require_relative './data_manager.rb'
require_relative './file_reader.rb'

class Interface
  def self.call
    system "clear"
    puts "Welcome to the App"
    sleep 0.5

    puts "What is the file name? (It has to be a JSON file)."
    file_name = gets.chomp
    system "clear"
    data = FileReader.new(file_name).read
    return puts data[:value] unless data[:valid]

    puts "What is the location name?"
    location = gets.chomp
    system "clear"

    res = DataManager.new(data[:value]).find_talent location
    res.each {|user_name| puts user_name}
  end
end