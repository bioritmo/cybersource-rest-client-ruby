=begin#CyberSource Merged Spec#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.htmlOpenAPI spec version: 0.0.1Generated by: https://github.com/swagger-api/swagger-codegen.gitSwagger Codegen version: 2.2.3=endrequire 'uri'module CyberSource  class SecureFileShareApi    attr_accessor :api_client    def initialize(api_client = ApiClient.default, config)      @api_client = api_client      @api_client.set_configuration(config)    end    # Download a File with File Identifier    # Download a file for the given file identifier    # @param file_id Unique identifier for each file    # @param [Hash] opts the optional parameters    # @option opts [String] :organization_id Valid Cybersource Organization Id    # @return [nil]    def get_file(file_id, opts = {})      data, status_code, headers = get_file_with_http_info(file_id, opts)      return data, status_code, headers    end    # Download a File with File Identifier    # Download a file for the given file identifier    # @param file_id Unique identifier for each file    # @param [Hash] opts the optional parameters    # @option opts [String] :organization_id Valid Cybersource Organization Id    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers    def get_file_with_http_info(file_id, opts = {})      if @api_client.config.debugging          begin            raise                @api_client.config.logger.debug 'Calling API: SecureFileShareApi.get_file ...'            rescue                puts 'Cannot write to log'            end      end      # verify the required parameter 'file_id' is set      if @api_client.config.client_side_validation && file_id.nil?        fail ArgumentError, "Missing the required parameter 'file_id' when calling SecureFileShareApi.get_file"      end      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length > 32        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling SecureFileShareApi.get_file, the character length must be smaller than or equal to 32.'      end      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length < 1        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling SecureFileShareApi.get_file, the character length must be great than or equal to 1.'      end      #if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'] !~ Regexp.new(/[a-zA-Z0-9-_]+/)        #fail ArgumentError, "invalid value for 'opts[:\"organization_id\"]' when calling SecureFileShareApi.get_file, must conform to the pattern /[a-zA-Z0-9-_]+/."      #end      # resource path      local_var_path = 'sfs/v1/files/{fileId}'.sub('{' + 'fileId' + '}', file_id.to_s)      # query parameters      query_params = {}      query_params[:'organizationId'] = opts[:'organization_id'] if !opts[:'organization_id'].nil?      # header parameters      header_params = {}      # HTTP header 'Accept' (if needed)      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'text/csv', 'application/pdf'])      # HTTP header 'Content-Type'      header_params['Content-Type'] = @api_client.select_header_content_type(['*/*;charset=utf-8'])      # form parameters      form_params = {}      # http body (model)      if 'GET' == 'POST'        post_body = '{}'      else        post_body = nil      end      auth_names = []      data, status_code, headers = @api_client.call_api(:GET, local_var_path,        :header_params => header_params,        :query_params => query_params,        :form_params => form_params,        :body => post_body,        :auth_names => auth_names)      if @api_client.config.debugging        begin        raise            @api_client.config.logger.debug "API called: SecureFileShareApi#get_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"        rescue            puts 'Cannot write to log'        end      end      return data, status_code, headers    end    # Get List of Files    # Get list of files and it's information of them available inside the report directory    # @param start_date Valid start date in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format.[Rfc Date Format](https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14)   **Example date format:**   - yyyy-MM-dd     # @param end_date Valid end date in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format.[Rfc Date Format](https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14)   **Example date format:**   - yyyy-MM-dd     # @param [Hash] opts the optional parameters    # @option opts [String] :organization_id Valid Cybersource Organization Id    # @option opts [String] :name **Tailored to searches for specific files with in given Date range** example : MyTransactionDetailreport.xml     # @return [V1FileDetailsGet200Response]    def get_file_detail(start_date, end_date, opts = {})      data, status_code, headers = get_file_detail_with_http_info(start_date, end_date, opts)      return data, status_code, headers    end    # Get List of Files    # Get list of files and it&#39;s information of them available inside the report directory    # @param start_date Valid start date in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format.[Rfc Date Format](https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14)   **Example date format:**   - yyyy-MM-dd     # @param end_date Valid end date in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format.[Rfc Date Format](https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14)   **Example date format:**   - yyyy-MM-dd     # @param [Hash] opts the optional parameters    # @option opts [String] :organization_id Valid Cybersource Organization Id    # @option opts [String] :name **Tailored to searches for specific files with in given Date range** example : MyTransactionDetailreport.xml     # @return [Array<(V1FileDetailsGet200Response, Fixnum, Hash)>] V1FileDetailsGet200Response data, response status code and response headers    def get_file_detail_with_http_info(start_date, end_date, opts = {})      if @api_client.config.debugging          begin            raise                @api_client.config.logger.debug 'Calling API: SecureFileShareApi.get_file_detail ...'            rescue                puts 'Cannot write to log'            end      end      # verify the required parameter 'start_date' is set      if @api_client.config.client_side_validation && start_date.nil?        fail ArgumentError, "Missing the required parameter 'start_date' when calling SecureFileShareApi.get_file_detail"      end      # verify the required parameter 'end_date' is set      if @api_client.config.client_side_validation && end_date.nil?        fail ArgumentError, "Missing the required parameter 'end_date' when calling SecureFileShareApi.get_file_detail"      end      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length > 32        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling SecureFileShareApi.get_file_detail, the character length must be smaller than or equal to 32.'      end      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length < 1        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling SecureFileShareApi.get_file_detail, the character length must be great than or equal to 1.'      end      #if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'] !~ Regexp.new(/[a-zA-Z0-9-_]+/)        #fail ArgumentError, "invalid value for 'opts[:\"organization_id\"]' when calling SecureFileShareApi.get_file_detail, must conform to the pattern /[a-zA-Z0-9-_]+/."      #end      #if @api_client.config.client_side_validation && !opts[:'name'].nil? && opts[:'name'] !~ Regexp.new(/[a-zA-Z0-9-_\\.]+/)        #fail ArgumentError, "invalid value for 'opts[:\"name\"]' when calling SecureFileShareApi.get_file_detail, must conform to the pattern /[a-zA-Z0-9-_\\.]+/."      #end      # resource path      local_var_path = 'sfs/v1/file-details'      # query parameters      query_params = {}      query_params[:'startDate'] = start_date      query_params[:'endDate'] = end_date      query_params[:'organizationId'] = opts[:'organization_id'] if !opts[:'organization_id'].nil?      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?      # header parameters      header_params = {}      # HTTP header 'Accept' (if needed)      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json'])      # HTTP header 'Content-Type'      header_params['Content-Type'] = @api_client.select_header_content_type(['*/*;charset=utf-8'])      # form parameters      form_params = {}      # http body (model)      if 'GET' == 'POST'        post_body = '{}'      else        post_body = nil      end      auth_names = []      data, status_code, headers = @api_client.call_api(:GET, local_var_path,        :header_params => header_params,        :query_params => query_params,        :form_params => form_params,        :body => post_body,        :auth_names => auth_names,        :return_type => 'V1FileDetailsGet200Response')      if @api_client.config.debugging        begin        raise            @api_client.config.logger.debug "API called: SecureFileShareApi#get_file_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"        rescue            puts 'Cannot write to log'        end      end      return data, status_code, headers    end  endend