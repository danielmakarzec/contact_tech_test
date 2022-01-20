require './lib/file_reader.rb'

RSpec.describe FileReader, "#read" do
  context "The file is ok." do
    it "produces a list of talent" do
      res = FileReader.new("data").read
      expect(res[:valid]).to be true
      expect(res[:value].class).to eq(Array)
      expect(res[:value].size).to eq(4)
    end
  end

  context "The file structure is wrong" do
    it "provides information about the issue (It Is Not An Array)" do
      res = FileReader.new("test").read
      expect(res[:valid]).to be false
      expect(res[:value]).to eq "Wrong file structure. It has to be an array of objects"
    end
  end

  context "The file format is incorrect." do
    it "provides information about the issue (Wrong File Format)" do
      res = FileReader.new("test2").read
      expect(res[:valid]).to be false
      expect(res[:value]).to eq "Wrong file format. You need to provide a Json File"
    end
  end

  context "The file doesn't exist." do
    it "provides information about the issue (File Missing)" do
      res = FileReader.new("#").read
      expect(res[:valid]).to be false
      expect(res[:value]).to eq "File missing!"
    end
  end
end