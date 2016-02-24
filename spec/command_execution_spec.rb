require "spec_helper"

describe "Test CommandExecution Class" do
  it "should return Open3 command result" do
    # actual
    allow_any_instance_of(CommandExecution).to receive(:exec_command)
        .and_return("stdout output\nstderr output\nstatus output")
    cmd_exec = CommandExecution.new("ls -l")
    cmd_result_log = cmd_exec.exec_command

    # expect
    expect(cmd_exec.exec_command).to eq(
        "stdout output\nstderr output\nstatus output")
  end



  # it 'should return json format for command result' do
  #   cmd_exec1 = CommandExecution.new
  #   puts cmd_exec1.exec_command("ls", "json")
  #
  #   allow_any_instance_of(CommandExecution).to receive(:exec_command)
  #       .with("hadoop job -list", "json")
  #       .and_return("[ {'stdout':'stdout'},
  #                      {'stderr':'stderr'},
  #                      {'status':'status'},
  #                      {'date':'date'} ]"
  #       .gsub(/(\s)/, ""))
  #
  #   cmd_exec = CommandExecution.new
  #   puts cmd_exec.exec_command("hadoop job -list", "json")
  #   expect(cmd_exec.exec_command("hadoop job -list", "json")).to eq(
  #       "[ {'stdout':'stdout'},
  #          {'stderr':'stderr'},
  #          {'status':'status'},
  #          {'date':'date'} ]"
  #       .gsub(/(\s)/, ""))
  # end
  #
  # it 'should return text format for command result' do
  #   allow_any_instance_of(CommandExecution).to receive(:exec_command)
  #       .with("hadoop job -list", "text")
  #       .and_return("[Tue Feb xx xx:xx:xx JST 20xx] [Info]stdout [Error]stderr [Status]status\n")
  # end
 end
