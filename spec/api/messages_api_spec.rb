=begin
#ARTIK Cloud API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ArtikCloud::MessagesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MessagesApi' do
  before do
    # run before each test
    @instance = ArtikCloud::MessagesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MessagesApi' do
    it 'should create an instact of MessagesApi' do
      expect(@instance).to be_instance_of(ArtikCloud::MessagesApi)
    end
  end

  # unit tests for get_aggregates_histogram
  # Get Normalized Message Histogram
  # Get Histogram on normalized messages.
  # @param start_date Timestamp of earliest message (in milliseconds since epoch).
  # @param end_date Timestamp of latest message (in milliseconds since epoch).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sdid Source device ID of the messages being searched.
  # @option opts [String] :field Message field being queried for building histogram.
  # @option opts [String] :interval Interval of time for building histogram blocks. (Valid values: minute, hour, day, month, year)
  # @return [AggregatesHistogramResponse]
  describe 'get_aggregates_histogram test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_field_presence
  # Get normalized message presence
  # Get normalized message presence.
  # @param start_date startDate
  # @param end_date endDate
  # @param interval String representing grouping interval. One of: &#39;minute&#39; (1 hour limit), &#39;hour&#39; (1 day limit), &#39;day&#39; (31 days limit), &#39;month&#39; (1 year limit), or &#39;year&#39; (10 years limit).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sdid Source device ID of the messages being searched.
  # @option opts [String] :field_presence String representing a field from the specified device ID.
  # @return [FieldPresenceEnvelope]
  describe 'get_field_presence test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_last_normalized_messages
  # Get Last Normalized Message
  # Get last messages normalized.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :count Number of items to return per query.
  # @option opts [String] :sdids Comma separated list of source device IDs (minimum: 1).
  # @option opts [String] :field_presence String representing a field from the specified device ID.
  # @return [NormalizedMessagesEnvelope]
  describe 'get_last_normalized_messages test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_message_aggregates
  # Get Normalized Message Aggregates
  # Get Aggregates on normalized messages.
  # @param sdid Source device ID of the messages being searched.
  # @param field Message field being queried for aggregates.
  # @param start_date Timestamp of earliest message (in milliseconds since epoch).
  # @param end_date Timestamp of latest message (in milliseconds since epoch).
  # @param [Hash] opts the optional parameters
  # @return [AggregatesResponse]
  describe 'get_message_aggregates test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_message_snapshots
  # Get Message Snapshots
  # Get message snapshots.
  # @param sdids Device IDs for which the snapshots are requested. Max 100 device ids per call.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :include_timestamp Indicates whether to return timestamps of the last update for each field.
  # @return [SnapshotResponses]
  describe 'get_message_snapshots test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_normalized_actions
  # Get Normalized Actions
  # Get the actions normalized
  # @param [Hash] opts the optional parameters
  # @option opts [String] :uid User ID. If not specified, assume that of the current authenticated user. If specified, it must be that of a user for which the current authenticated user has read access to.
  # @option opts [String] :ddid Destination device ID of the actions being searched.
  # @option opts [String] :mid The message ID being searched.
  # @option opts [String] :offset A string that represents the starting item, should be the value of &#39;next&#39; field received in the last response. (required for pagination)
  # @option opts [Integer] :count count
  # @option opts [Integer] :start_date startDate
  # @option opts [Integer] :end_date endDate
  # @option opts [String] :order Desired sort order: &#39;asc&#39; or &#39;desc&#39;
  # @return [NormalizedActionsEnvelope]
  describe 'get_normalized_actions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_normalized_messages
  # Get Normalized Messages
  # Get the messages normalized
  # @param [Hash] opts the optional parameters
  # @option opts [String] :uid User ID. If not specified, assume that of the current authenticated user. If specified, it must be that of a user for which the current authenticated user has read access to.
  # @option opts [String] :sdid Source device ID of the messages being searched.
  # @option opts [String] :mid The message ID being searched.
  # @option opts [String] :field_presence String representing a field from the specified device ID.
  # @option opts [String] :filter Filter.
  # @option opts [String] :offset A string that represents the starting item, should be the value of &#39;next&#39; field received in the last response. (required for pagination)
  # @option opts [Integer] :count count
  # @option opts [Integer] :start_date startDate
  # @option opts [Integer] :end_date endDate
  # @option opts [String] :order Desired sort order: &#39;asc&#39; or &#39;desc&#39;
  # @return [NormalizedMessagesEnvelope]
  describe 'get_normalized_messages test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_actions
  # Send Actions
  # Send Actions
  # @param data Actions that are passed in the body
  # @param [Hash] opts the optional parameters
  # @return [MessageIDEnvelope]
  describe 'send_actions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_message
  # Send Message
  # Send a message
  # @param data Message object that is passed in the body
  # @param [Hash] opts the optional parameters
  # @return [MessageIDEnvelope]
  describe 'send_message test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
