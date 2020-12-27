#!/usr/bin/env ruby
require "bundler"
Bundler.require
require "numo/narray"
require "pstore"

if ARGV.size != 1
    STDERR.puts "使用法: #{$0} ディレクトリー"
    exit false
end

dirname = ARGV[0]
unless Dir.exist? dirname
    STDERR.puts "ディレクトリーが存在しません"
    exit false
end

emgs = Array.new(16){ 
    Array.new(16)
}

Dir.glob("#{dirname}/*.pstore").each.with_index do |filename, i|
    db = PStore.new filename
    ary = []
    db.transaction do
        ary = db["root"]
    end

    ary.transpose.each.with_index do |emg, j|
        emgs[j][i] = emg.max
    end
    # break if i == 1
end

# p emgs
p emgs.map{|max_emg| max_emg.max}.to_a