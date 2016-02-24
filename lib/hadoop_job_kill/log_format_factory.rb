class LogFormatFactory
  def format_log(stdout, stderr, status)
    raise("must not execute method of abstract class")
  end

  def create_text_log
    LogFormatForText.new
  end

  def create_json_log
    LogFormatForJson.new
  end
end
