=begin
#ARTIK Cloud API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for ArtikCloud::WhitelistingApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WhitelistingApi' do
  before do
    # run before each test
    @instance = ArtikCloud::WhitelistingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WhitelistingApi' do
    it 'should create an instact of WhitelistingApi' do
      expect(@instance).to be_instance_of(ArtikCloud::WhitelistingApi)
    end
  end

  # unit tests for delete_vdid
  # Delete a vdid from the devicetype whitelist.
  # Delete a vdid from the devicetype whitelist.
  # @param dtid Device Type ID.
  # @param vdid Vendor Device ID.
  # @param [Hash] opts the optional parameters
  # @return [WhitelistEnvelope]
  describe 'delete_vdid test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_whitelist_certificate
  # Delete a whitelist certificate associated with a devicetype.
  # Delete a whitelist certificate associated with a devicetype.
  # @param dtid Device Type ID.
  # @param cid Certificate ID.
  # @param [Hash] opts the optional parameters
  # @return [WhitelistEnvelope]
  describe 'delete_whitelist_certificate test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for enable_whitelist
  # Enable or disble whitelist feature of a device type
  # Enable or disble whitelist feature of a device type
  # @param dtid Device Type ID.
  # @param device_type_update_info Device type update input.
  # @param [Hash] opts the optional parameters
  # @return [WhitelistEnvelope]
  describe 'enable_whitelist test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_rejected_row_list
  # Get the list of rejected rows for an uploaded CSV file.
  # Get the list of rejected rows for an uploaded CSV file.
  # @param dtid Device type id related to the uploaded CSV file.
  # @param upload_id Upload id related to the uploaded CSV file.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :count Max results count.
  # @option opts [Integer] :offset Result starting offset.
  # @return [RejectedCSVRowsEnvelope]
  describe 'get_rejected_row_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_upload_status
  # Get the status of a uploaded CSV file.
  # Get the status of a uploaded CSV file.
  # @param dtid Device type id related to the uploaded CSV file.
  # @param upload_id Upload id related to the uploaded CSV file.
  # @param [Hash] opts the optional parameters
  # @return [UploadStatusEnvelope]
  describe 'get_upload_status test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_whitelist
  # Get whitelisted vdids of a device type.
  # Get whitelisted vdids of a device type.
  # @param dtid Device Type ID.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :count Max results count.
  # @option opts [Integer] :offset Result starting offset.
  # @return [WhitelistResultEnvelope]
  describe 'get_whitelist test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_whitelist_certificate
  # Get whitelist certificate of device type.
  # Get whitelist certificate of device type.
  # @param dtid Device Type ID.
  # @param [Hash] opts the optional parameters
  # @return [CertificateEnvelope]
  describe 'get_whitelist_certificate test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_whitelist_status
  # Get the status of whitelist feature (enabled/disabled) of a device type.
  # Get the status of whitelist feature (enabled/disabled) of a device type.
  # @param dtid Device Type ID.
  # @param [Hash] opts the optional parameters
  # @return [WhitelistEnvelope]
  describe 'get_whitelist_status test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upload_csv
  # Upload a CSV file related to the Device Type.
  # Upload a CSV file related to the Device Type.
  # @param dtid Device Type ID.
  # @param file Device Type ID.
  # @param [Hash] opts the optional parameters
  # @return [UploadIdEnvelope]
  describe 'upload_csv test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end