class FileManager
  def initialize(file_name)
    @file = File.new(file_name, 'r+')
  end

  def read
    @mem = file.readlines
  end

  def write(data)
    file.puts(data)
  end
end