# encoding: utf-8
require "logstash/filters/base"
require "logstash/namespace"

# This example filter will replace the contents of the default
# message field with whatever you specify in the configuration.
#
# It is only intended to be used as an example.
class LogStash::Filters::Example < LogStash::Filters::Base

  # Setting the config_name here is required. This is how you
  # configure this filter from your Logstash config.
  #
  # filter {
  #   increment {
  #     uniqueid => [ "fieldname" ]
  #   }
  # }
  #
  config_name "increment"

  # Replace the message with this value.
  config :uniqueid, :validate => :integer


  public
  def register
    # Add instance variables
    i=0
  end # def register

  public
  def filter(event)
    
    uniqueid(event) if @uniqueid
    
     def uniqueid(event)
    #
    @uniqueid.each do |field|
      result = i++
      event.set(field, result)
    end
  end
  
    # filter_matched should go in the last line of our successful code
    filter_matched(event)
  end # def filter
end # class LogStash::Filters::Example
