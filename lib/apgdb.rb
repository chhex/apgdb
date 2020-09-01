require "apgdb/version"
require "apgdb/oracle"
require "apgdb/sequel"

module Apgdb
  class Error < StandardError; end

  def self.jars_root
    File.join("#{File.dirname(__FILE__)}", "./", "jars")
  end

  def self.load_jars!
    require 'java'
    Dir["#{jars_root}/*.jar"].each {|jar| require jar }
  end

end
Apgdb::load_jars!