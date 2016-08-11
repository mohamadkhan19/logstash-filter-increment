# encoding: utf-8
require 'spec_helper'
require "logstash/filters/index"

describe LogStash::Filters::Index do
  describe "Set to Hello World" do
    let(:config) do <<-CONFIG
      filter {
        index {
          uniqueid => [ "fieldname" ]
        }
      }
    CONFIG
    end

  end
end
