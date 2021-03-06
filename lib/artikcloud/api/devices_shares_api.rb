=begin
#ARTIK Cloud API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module ArtikCloud
  class DevicesSharesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Share a device 
    # Share a device 
    # @param device_id Device ID.
    # @param device_share_info Device object that needs to be added
    # @param [Hash] opts the optional parameters
    # @return [DeviceSharingId]
    def create_share_for_device(device_id, device_share_info, opts = {})
      data, _status_code, _headers = create_share_for_device_with_http_info(device_id, device_share_info, opts)
      return data
    end

    # Share a device 
    # Share a device 
    # @param device_id Device ID.
    # @param device_share_info Device object that needs to be added
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeviceSharingId, Fixnum, Hash)>] DeviceSharingId data, response status code and response headers
    def create_share_for_device_with_http_info(device_id, device_share_info, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DevicesSharesApi.create_share_for_device ..."
      end
      # verify the required parameter 'device_id' is set
      fail ArgumentError, "Missing the required parameter 'device_id' when calling DevicesSharesApi.create_share_for_device" if device_id.nil?
      # verify the required parameter 'device_share_info' is set
      fail ArgumentError, "Missing the required parameter 'device_share_info' when calling DevicesSharesApi.create_share_for_device" if device_share_info.nil?
      # resource path
      local_var_path = "/devices/{deviceId}/shares".sub('{format}','json').sub('{' + 'deviceId' + '}', device_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(device_share_info)
      auth_names = ['artikcloud_oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeviceSharingId')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DevicesSharesApi#create_share_for_device\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete specific share of the given device id
    # Delete specific share of the given device id
    # @param device_id Device ID.
    # @param share_id Share ID.
    # @param [Hash] opts the optional parameters
    # @return [DeviceSharingId]
    def delete_sharing_for_device(device_id, share_id, opts = {})
      data, _status_code, _headers = delete_sharing_for_device_with_http_info(device_id, share_id, opts)
      return data
    end

    # Delete specific share of the given device id
    # Delete specific share of the given device id
    # @param device_id Device ID.
    # @param share_id Share ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeviceSharingId, Fixnum, Hash)>] DeviceSharingId data, response status code and response headers
    def delete_sharing_for_device_with_http_info(device_id, share_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DevicesSharesApi.delete_sharing_for_device ..."
      end
      # verify the required parameter 'device_id' is set
      fail ArgumentError, "Missing the required parameter 'device_id' when calling DevicesSharesApi.delete_sharing_for_device" if device_id.nil?
      # verify the required parameter 'share_id' is set
      fail ArgumentError, "Missing the required parameter 'share_id' when calling DevicesSharesApi.delete_sharing_for_device" if share_id.nil?
      # resource path
      local_var_path = "/devices/{deviceId}/shares/{shareId}".sub('{format}','json').sub('{' + 'deviceId' + '}', device_id.to_s).sub('{' + 'shareId' + '}', share_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['artikcloud_oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeviceSharingId')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DevicesSharesApi#delete_sharing_for_device\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all shares for the given device id
    # List all shares for the given device id
    # @param device_id Device ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count Desired count of items in the result set.
    # @option opts [Integer] :offset Offset for pagination.
    # @return [DeviceSharingEnvelope]
    def get_all_shares_for_device(device_id, opts = {})
      data, _status_code, _headers = get_all_shares_for_device_with_http_info(device_id, opts)
      return data
    end

    # List all shares for the given device id
    # List all shares for the given device id
    # @param device_id Device ID.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count Desired count of items in the result set.
    # @option opts [Integer] :offset Offset for pagination.
    # @return [Array<(DeviceSharingEnvelope, Fixnum, Hash)>] DeviceSharingEnvelope data, response status code and response headers
    def get_all_shares_for_device_with_http_info(device_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DevicesSharesApi.get_all_shares_for_device ..."
      end
      # verify the required parameter 'device_id' is set
      fail ArgumentError, "Missing the required parameter 'device_id' when calling DevicesSharesApi.get_all_shares_for_device" if device_id.nil?
      # resource path
      local_var_path = "/devices/{deviceId}/shares".sub('{format}','json').sub('{' + 'deviceId' + '}', device_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['artikcloud_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeviceSharingEnvelope')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DevicesSharesApi#get_all_shares_for_device\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get specific share of the given device id
    # Get specific share of the given device id
    # @param device_id Device ID.
    # @param share_id Share ID.
    # @param [Hash] opts the optional parameters
    # @return [DeviceSharing]
    def get_sharing_for_device(device_id, share_id, opts = {})
      data, _status_code, _headers = get_sharing_for_device_with_http_info(device_id, share_id, opts)
      return data
    end

    # Get specific share of the given device id
    # Get specific share of the given device id
    # @param device_id Device ID.
    # @param share_id Share ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeviceSharing, Fixnum, Hash)>] DeviceSharing data, response status code and response headers
    def get_sharing_for_device_with_http_info(device_id, share_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DevicesSharesApi.get_sharing_for_device ..."
      end
      # verify the required parameter 'device_id' is set
      fail ArgumentError, "Missing the required parameter 'device_id' when calling DevicesSharesApi.get_sharing_for_device" if device_id.nil?
      # verify the required parameter 'share_id' is set
      fail ArgumentError, "Missing the required parameter 'share_id' when calling DevicesSharesApi.get_sharing_for_device" if share_id.nil?
      # resource path
      local_var_path = "/devices/{deviceId}/shares/{shareId}".sub('{format}','json').sub('{' + 'deviceId' + '}', device_id.to_s).sub('{' + 'shareId' + '}', share_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['artikcloud_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeviceSharing')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DevicesSharesApi#get_sharing_for_device\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
