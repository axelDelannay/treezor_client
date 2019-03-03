=begin
#Treezor

#Treezor API.  more info [here](https://www.treezor.com). 

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.1

=end

require 'uri'

module TreezorClient
  class PayoutRefundsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # search pay outs refund
    # Get pay out refund that match search criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).
    # @option opts [Integer] :id PayoutRefund id
    # @option opts [String] :tag PayoutRefund tag
    # @option opts [String] :code_status PayoutRefund Code Status
    # @option opts [String] :information_status PayoutRefund Information Status
    # @option opts [Integer] :payout_id Payout Id
    # @option opts [Integer] :page_number The page number
    # @return [InlineResponse20021]
    def get_payout_refunds(opts = {})
      data, _status_code, _headers = get_payout_refunds_with_http_info(opts)
      data
    end

    # search pay outs refund
    # Get pay out refund that match search criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).
    # @option opts [Integer] :id PayoutRefund id
    # @option opts [String] :tag PayoutRefund tag
    # @option opts [String] :code_status PayoutRefund Code Status
    # @option opts [String] :information_status PayoutRefund Information Status
    # @option opts [Integer] :payout_id Payout Id
    # @option opts [Integer] :page_number The page number
    # @return [Array<(InlineResponse20021, Fixnum, Hash)>] InlineResponse20021 data, response status code and response headers
    def get_payout_refunds_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayoutRefundsApi.get_payout_refunds ...'
      end
      # resource path
      local_var_path = '/payoutRefunds'

      # query parameters
      query_params = {}
      query_params[:'accessSignature'] = opts[:'access_signature'] if !opts[:'access_signature'].nil?
      query_params[:'accessTag'] = opts[:'access_tag'] if !opts[:'access_tag'].nil?
      query_params[:'accessUserId'] = opts[:'access_user_id'] if !opts[:'access_user_id'].nil?
      query_params[:'accessUserIp'] = opts[:'access_user_ip'] if !opts[:'access_user_ip'].nil?
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'tag'] = opts[:'tag'] if !opts[:'tag'].nil?
      query_params[:'codeStatus'] = opts[:'code_status'] if !opts[:'code_status'].nil?
      query_params[:'informationStatus'] = opts[:'information_status'] if !opts[:'information_status'].nil?
      query_params[:'payoutId'] = opts[:'payout_id'] if !opts[:'payout_id'].nil?
      query_params[:'pageNumber'] = opts[:'page_number'] if !opts[:'page_number'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20021')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayoutRefundsApi#get_payout_refunds\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end