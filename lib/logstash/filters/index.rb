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
  #   index {
  #     uniqueid => [ "fieldname" ]
  #   }
  # }
  #
  config_name "index"

  # Replace the message with this value.
  config :uniqueid, :validate => :array


  public
  def register
    # Add instance variables
  end # def register

  public
  def filter(event)
    
    uniqueid(event) if @uniqueid
     # filter_matched should go in the last line of our successful code
    filter_matched(event)
  end # def filter
  
     
   private 
    $i = 0
     def uniqueid(event)
    #
   
    @uniqueid.each do |field|
      $i = ($i + 1) 
      event[field] = $i
    end # end @uniqueid.each do
    end # end def uniqueid(event)
  
  
   
  
end # class LogStash::Filters::Example
