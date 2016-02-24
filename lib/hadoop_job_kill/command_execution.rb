# -*- coding: utf-8 -*-
require "json"
require "logger"
require "open3"

class CommandExecution
  def initialize(cmd)
    @cmd = cmd
  end

  def exec_command
    Open3.capture3(@cmd)
  end
end
