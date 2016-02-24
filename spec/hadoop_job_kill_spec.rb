require "spec_helper"

describe HadoopJobKill do
  it 'has a version number' do
    expect(HadoopJobKill::VERSION).not_to be nil
  end

  it 'does something useful' do
    a = HadoopJobKill.new("~/testlog", "json").kill_hadoop_job
  end
end
