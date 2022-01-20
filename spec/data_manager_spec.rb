require './lib/data_manager'

data = [
  { name: "Diane Nguyen",       location: "Hollywoo" },
  { name: "Mr. Peanutbutter's", location: "Hollywoo" }
]

RSpec.describe DataManager, "#find_talent" do
  it "filters provided talent collection by location" do
    res = DataManager.new(data).find_talent("hollywoo")
    expect(res).to eq ["Diane Nguyen", "Mr. Peanutbutter's"]
  end
end