#!/usr/bin/env ruby
require "bundler"
Bundler.require
require "numo/narray"
require "emg"
include Emg

a = EMG.assign "/home/hikari/yu-research/EX/201223-01-M/EMG/naname3-1.pstore"
p a.to_na[0, true]