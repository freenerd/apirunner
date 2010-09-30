class HeaderChecker < Checker

  # checks given header against the given expepctation and returns a result object
  def check
    result = Result.new(@testcase, @response)
    @testcase.response_expectation['headers'].each_pair do |header_name, header_value|
      if is_regex?(header_value)
        if not (excluded?(header_name) or regex_matches?(header_value, @response.headers[header_name]))
          result.succeeded = false
          result.error_message = " expected header identifier --#{header_name}-- to match regex --#{header_value}--\n got --#{@response.headers[header_name]}--"
        end
      else
        if not (excluded?(header_name) or string_matches?(header_value, @response.headers[header_name]))
          result.succeeded = false
          result.error_message = " expected header identifier --#{header_name}-- to match --#{header_value}--\n got --#{@response.headers[header_name]}--"
        end
      end
    end unless (@testcase.response_expectation['headers'].nil? or @testcase.response_expectation['headers'].empty?)
    result
  end

end
