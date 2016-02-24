require "hadoop_job_kill/command_execution"
require "hadoop_job_kill/log_archive"
require "hadoop_job_kill/log_format_for_json"
require "hadoop_job_kill/log_format_for_text"

module HadoopJobKill
  def kill_hadoop_job(filename, format)
    exec_cmd = CommandExecution.new("ls -l")
    result_log = exec_cmd.exec_command
    if format.eql?("json")
      log_fmt = LogFormatForJson.new()
    elsif format.eql?("text")
      log_fmt = LogFormatForText.new()
    end

    formatted_result_log = log_fmt.format_log(result_log[0],
                                              result_log[1],
                                              result_log[2])
    log_arch = LogArchive.new(filename, formatted_result_log)
    log_arch.store_log
  end
end

class Test
  include HadoopJobKill
  def test
    kill_hadoop_job("~/testlog", "json")
  end
end



a = Test.new
a.test
