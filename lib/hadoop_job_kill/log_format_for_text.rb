class LogFormatForText < LogFormat
  def format_log(stdout=nil, stderr=nil, status=nil)
    date = `date`
    stdout_log = "[#{date}] DEBUG -- : #{stdout}\n"
    status_log = "[#{date}] DEBUG -- : #{status}\n"
    stderr_log = "[#{date}] DEBUG -- : #{stderr}\n"
    stdout_log + status_log + stderr_log
  end
end
