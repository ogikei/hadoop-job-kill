class LogArchive
  def initialize(filename, log)
    @filename = filename
    @log = log
  end

  def store_log
    File.open("@filename", "a") do |file|
        file.write(@log)
    end
  end
end
