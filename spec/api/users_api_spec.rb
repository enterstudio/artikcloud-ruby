=begin
Artik Cloud API

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

License: MIT
http://en.wikipedia.org/wiki/MIT_License

Terms of Service: http://www.samsung.com/global/business/mobile/info/terms-and-conditions.html

=end

require 'spec_helper'
require 'json'

# Unit tests for ArtikCloud::UsersApi
describe 'UsersApi', :vcr do
  let(:user){ FactoryGirl.create(:user) }
  let(:instance) { ArtikCloud::UsersApi.new(API_CLIENT) }

  describe 'test an instance of UsersApi' do
    it 'should create an instact of UsersApi' do
      expect(instance).to be_a(ArtikCloud::UsersApi)
    end
  end

  # unit tests for get_self
  # Get Current User Profile
  # Get&#39;s the current user&#39;s profile
  # @param [Hash] opts the optional parameters
  # @return [UserEnvelope]
  describe 'get_self test' do
    it "should work" do
      result = instance.get_self

      expect(result).to be_a(ArtikCloud::UserEnvelope)
      expect(result.data.email).to eq user.email
      expect(result.data.id).to eq user.id
      expect(result.data.name).to eq user.name
      expect(result.data.full_name).to eq user.full_name
      expect(result.data.created_on).to eq user.created_on
      expect(result.data.modified_on).to_not be_nil
    end
  end

  describe 'get_user_devices test' do
    it "should work" do
      result = instance.get_user_devices(user.id)
      expect(result).to be_a(ArtikCloud::DevicesEnvelope)
      expect(result.data.devices).to_not be_nil
    end
  end

  describe 'get_user_device_types test' do
    it "should work" do
      result = instance.get_user_device_types(user.id)
      expect(result).to be_a(ArtikCloud::DeviceTypesEnvelope)
      expect(result.data.device_types).to_not be_nil
    end
  end

  describe 'get_user_properties, update_user_properties, and delete_user_properties test' do
    it "should work", :new_episodes do
      # get_user_properties

      begin
        result = instance.get_user_properties(user.id, aid: user.aid)
      rescue ArtikCloud::ApiError => exception
        if exception.code == 404
          app_properties = ArtikCloud::AppProperties.new
          app_properties.properties = 'abc=def'
          result = instance.create_user_properties(user.id, app_properties, aid: user.aid)
        else
          raise "Non-404 Error returned by API"
        end
        expect(result).to_not be_nil

        # update_user_properties
        app_properties_update = ArtikCloud::AppProperties.new
        app_properties_update.properties = 'mno=pqr'
        result_update = instance.update_user_properties(user.id, app_properties_update, aid: user.aid)
        expect(result_update).to_not be_nil
        expect(result_update.data.properties).to eq 'mno=pqr'

        # delete_user_properties
        result_delete = instance.delete_user_properties(user.id, aid: user.aid)
        expect(result_delete).to_not be_nil
        expect(result_delete).to eq result_update
      end
    end
  end

  describe 'get_user_rules test' do
    it "should work" do
      result = instance.get_user_rules(user.id)
      expect(result).to_not be_nil
    end
  end
end
