require "hadoop_job_kill/log_format_for_json"
require "hadoop_job_kill/log_format_for_text"

class LogFormatFactory
  def self.create_text_log
    LogFormatForText.new
  end

  def self.create_json_log
    LogFormatForJson.new
  end
end
