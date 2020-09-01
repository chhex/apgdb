module Sequel
  require 'sequel'
  class Connection
    attr_reader :target
    def initialize(target)
      @target = target
    end
    def connect(user, pw)
      url = "jdbc:oracle:thin:#{user}/#{pw}@#{@target}.apgsga.ch:1521:#{@target}"
      Sequel.connect(url)
    end
  end

end


