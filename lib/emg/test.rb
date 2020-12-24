#!/usr/bin/env ruby
require "bundler"
Bundler.require
require "numo/narray"
require "emg"
include Emg

a = EMG.assign "***.pstore"
a.to_a