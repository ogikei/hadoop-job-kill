require "hadoop_job_kill/log_format"
require "rspec"

describe "My behaviour" do
  log_fmt = LogFormat.new
  it "should throw exception, if users have accessed this method" do
    expect { log_fmt.format_log }.to raise_error(
        "must not execute method of abstract class")
  end
end