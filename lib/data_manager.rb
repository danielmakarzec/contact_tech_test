class DataManager
  def initialize(list_of_talent)
    @list_of_talent = list_of_talent
  end

  def find_talent location
    wanted_talents = @list_of_talent.select {|talent| talent[:location].downcase == location.downcase}
    return ["No record found"] if wanted_talents.empty?
    wanted_talents.collect {|talent| talent[:name]}
  end
end