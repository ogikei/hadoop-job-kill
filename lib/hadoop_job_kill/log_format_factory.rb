require "hadoop_job_kill/"

class LogFormatFactory
  def format_log(stdout, stderr, status)
    raise("must not execute method of abstract class")
  end

  def create_text_log

  end

  def create_json_log

  end
end
