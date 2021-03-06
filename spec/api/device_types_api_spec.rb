=begin
#ARTIK Cloud API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ArtikCloud::DeviceTypesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DeviceTypesApi' do
  before do
    # run before each test
    @instance = ArtikCloud::DeviceTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DeviceTypesApi' do
    it 'should create an instact of DeviceTypesApi' do
      expect(@instance).to be_instance_of(ArtikCloud::DeviceTypesApi)
    end
  end

  # unit tests for get_available_manifest_versions
  # Get Available Manifest Versions
  # Get a Device Type&#39;s available manifest versions
  # @param device_type_id deviceTypeId
  # @param [Hash] opts the optional parameters
  # @return [ManifestVersionsEnvelope]
  describe 'get_available_manifest_versions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_device_type
  # Get Device Type
  # Retrieves a Device Type
  # @param device_type_id deviceTypeId
  # @param [Hash] opts the optional parameters
  # @return [DeviceTypeEnvelope]
  describe 'get_device_type test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_device_types
  # Get Device Types
  # Retrieves Device Types
  # @param name Device Type name
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Offset for pagination.
  # @option opts [Integer] :count Desired count of items in the result set
  # @option opts [String] :tags Elements tagged with the list of tags. (comma separated)
  # @return [DeviceTypesEnvelope]
  describe 'get_device_types test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_device_types_by_application
  # Get Device Types by Application
  # Get Device Types by Application
  # @param app_id Application ID.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :product_info Flag to include the associated ProductInfo if present
  # @option opts [Integer] :count Desired count of items in the result set.
  # @option opts [Integer] :offset Offset for pagination.
  # @return [DeviceTypesEnvelope]
  describe 'get_device_types_by_application test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_latest_manifest_properties
  # Get Latest Manifest Properties
  # Get a Device Type&#39;s manifest properties for the latest version.
  # @param device_type_id Device Type ID.
  # @param [Hash] opts the optional parameters
  # @return [ManifestPropertiesEnvelope]
  describe 'get_latest_manifest_properties test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_manifest_properties
  # Get manifest properties
  # Get a Device Type&#39;s manifest properties for a specific version.
  # @param device_type_id Device Type ID.
  # @param version Manifest Version.
  # @param [Hash] opts the optional parameters
  # @return [ManifestPropertiesEnvelope]
  describe 'get_manifest_properties test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
