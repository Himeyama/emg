require "emg/version"
require "pstore"
require "numo/narray"

module Emg
    class Error < StandardError; end
    # Your code goes here...

    class EMG < PStore
        def self.assign fn
            self.new fn if File.exist? fn
        end

        def to_a
            transaction do
                self["root"]
            end
        end

        def to_na
            Numo::DFloat[*to_a]
        end
    end
end