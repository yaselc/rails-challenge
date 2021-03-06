=begin
#WebService 1

#This is a simple authentication webservice for a demonstration purpose. 

OpenAPI spec version: 1.0.0
Contact: yaselc@gmail.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

# Common files
require 'webservice1_client/api_client'
require 'webservice1_client/api_error'
require 'webservice1_client/version'
require 'webservice1_client/configuration'

# Models
require 'webservice1_client/models/api_response'
require 'webservice1_client/models/login'

# APIs
require 'webservice1_client/api/login_api'

module WebService1
  class << self
    # Customize default settings for the SDK using block.
    #   WebService1.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
