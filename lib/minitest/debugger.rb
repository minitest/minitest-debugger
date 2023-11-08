alias set_trace_funk set_trace_func

def set_trace_func(*args)
  # DEBUGGER__::Context.send :attr_writer, :stop_next
  DEBUGGER__::Context.send :attr_writer, :finish_pos
  DEBUGGER__.context.finish_pos = -1
  DEBUGGER__.context.stop_next(-1)
  set_trace_funk(*args)
end

SCRIPT_LINES__ = {} unless defined? SCRIPT_LINES__

# this is unbelievably stupid.
path = caller_locations.find { |s| s.path !~ /require/ }&.absolute_path
SCRIPT_LINES__[path] = File.readlines(path) if path
SCRIPT_LINES__[__FILE__] = File.readlines(__FILE__)

require 'debug'
require "minitest"
require "minitest/test"

##
# This is a stupid simple example of how easy it is to make a minitest
# plugin that does something useful. In this case it wraps assert so
# that failed assertions will drop into the ruby debugger.

module Minitest::Debugger
  VERSION = "1.0.3"

  def assert test, msg = nil
    begin
      super
    rescue Minitest::Assertion => e
      warn "Assertion Failed. Dropping into debugger now:"
      DEBUGGER__.start
      raise e
    end
  end
end

class Minitest::Test
  include Minitest::Debugger
end
