require 'json'

class FileReader
  def initialize(file_name)
    @file_name = valid(file_name)
  end

  def read
    json = File.read "data/#{@file_name}.json"
    list = JSON.parse(json,:symbolize_names => true)

    return { valid: false, value: "Wrong file structure. It has to be an array of objects" } if list.class != Array
    return { valid: true, value: list}
  rescue Errno::ENOENT
    return {valid: false, value: "File missing!" }
  rescue JSON::ParserError
    return {valid: false, value: "Wrong file format. You need to provide a Json File" }
  end

  private

  def valid(file_name)
    /\A.+(\..+)\z/.match?(file_name) ? /\A(.+)\..+\z/.match(file_name)[1] : file_name
  end
end