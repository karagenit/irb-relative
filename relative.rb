#!/usr/bin/env ruby

dirs = []
files = []

ARGV.each do |path|
  dirs.push File.dirname(path)
  files.push File.basename(path)
end

dirs.map!{ |dir| ["-I", dir] }.flatten!
files.map!{ |file| ["-r", file] }.flatten!
args = dirs + files

exec 'irb', *args
