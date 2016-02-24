require "hadoop_job_kill/log_format"

class LogFormatForJson < LogFormat
  def format_log(stdout=nil, stderr=nil, status=nil)
    date = `date`
    data = [ {:stdout => stdout},
             {:stderr => stderr},
             {:status => status},
             {:date => date} ]
    data.to_json
  end
end
