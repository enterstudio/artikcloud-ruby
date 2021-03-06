=begin
#ARTIK Cloud API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module ArtikCloud
  class TagsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get all categories
    # Get all tags marked as categories
    # @param [Hash] opts the optional parameters
    # @return [TagsEnvelope]
    def get_tag_categories(opts = {})
      data, _status_code, _headers = get_tag_categories_with_http_info(opts)
      return data
    end

    # Get all categories
    # Get all tags marked as categories
    # @param [Hash] opts the optional parameters
    # @return [Array<(TagsEnvelope, Fixnum, Hash)>] TagsEnvelope data, response status code and response headers
    def get_tag_categories_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TagsApi.get_tag_categories ..."
      end
      # resource path
      local_var_path = "/tags/categories".sub('{format}','json')

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
        :return_type => 'TagsEnvelope')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#get_tag_categories\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get tag suggestions
    # Get tag suggestions for applications, device types that have been most used with a group of tags.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_type Entity type name.
    # @option opts [String] :tags Comma separated list of tags.
    # @option opts [String] :name Name of tags used for type ahead.
    # @option opts [Integer] :count Number of results to return. Max 10.
    # @return [TagsEnvelope]
    def get_tag_suggestions(opts = {})
      data, _status_code, _headers = get_tag_suggestions_with_http_info(opts)
      return data
    end

    # Get tag suggestions
    # Get tag suggestions for applications, device types that have been most used with a group of tags.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_type Entity type name.
    # @option opts [String] :tags Comma separated list of tags.
    # @option opts [String] :name Name of tags used for type ahead.
    # @option opts [Integer] :count Number of results to return. Max 10.
    # @return [Array<(TagsEnvelope, Fixnum, Hash)>] TagsEnvelope data, response status code and response headers
    def get_tag_suggestions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TagsApi.get_tag_suggestions ..."
      end
      if opts[:'entity_type'] && !['TAG', 'APPLICATION', 'DEVICE_TYPE'].include?(opts[:'entity_type'])
        fail ArgumentError, 'invalid value for "entity_type", must be one of TAG, APPLICATION, DEVICE_TYPE'
      end
      # resource path
      local_var_path = "/tags/suggestions".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'entity_type'] = opts[:'entity_type'] if !opts[:'entity_type'].nil?
      query_params[:'tags'] = opts[:'tags'] if !opts[:'tags'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?

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
        :return_type => 'TagsEnvelope')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#get_tag_suggestions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all tags of categories
    # Get all tags related to the list of categories
    # @param [Hash] opts the optional parameters
    # @option opts [String] :categories Comma separated list of categories.
    # @return [TagsEnvelope]
    def get_tags_by_categories(opts = {})
      data, _status_code, _headers = get_tags_by_categories_with_http_info(opts)
      return data
    end

    # Get all tags of categories
    # Get all tags related to the list of categories
    # @param [Hash] opts the optional parameters
    # @option opts [String] :categories Comma separated list of categories.
    # @return [Array<(TagsEnvelope, Fixnum, Hash)>] TagsEnvelope data, response status code and response headers
    def get_tags_by_categories_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TagsApi.get_tags_by_categories ..."
      end
      # resource path
      local_var_path = "/tags".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'categories'] = opts[:'categories'] if !opts[:'categories'].nil?

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
        :return_type => 'TagsEnvelope')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#get_tags_by_categories\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
