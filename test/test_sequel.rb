#!/usr/bin/env ruby
# encoding: utf-8
require_relative "../lib/apgdb"
seq = Sequel::Connection.new("CHEI212")
DB =  seq.connect('che','che')
DB['select * from DRUCKER_f'].each do |row|
  p row
end