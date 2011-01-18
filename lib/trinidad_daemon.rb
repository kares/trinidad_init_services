require 'rubygems'
require 'trinidad'

module Trinidad
  module Daemon
    VERSION = '0.4.1'

    def init
    end

    def setup?
      true
    end

    def start
      opts = Trinidad::CommandLineParser.parse(ARGV)
      @server = Trinidad::Server.new(opts)
      @server.start
    end

    def stop
      @server.tomcat.stop
      @server.tomcat.destroy
    end

    extend self
  end
end

Trinidad::Daemon.init
