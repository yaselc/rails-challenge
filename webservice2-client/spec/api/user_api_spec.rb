=begin
#WebService 2

#This is an authentication backend webservice for a demonstration purpose. 

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

require 'spec_helper'
require 'json'

# Unit tests for WebService2Client::UserApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserApi' do
  before do
    # run before each test
    @instance = WebService2Client::UserApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserApi' do
    it 'should create an instact of UserApi' do
      expect(@instance).to be_instance_of(WebService2Client::UserApi)
    end
  end

  # unit tests for ver_user
  # Verify user
  # 
  # @param email User email to verify
  # @param image Image uploaded by user
  # @param [Hash] opts the optional parameters
  # @option opts [String] :format 
  # @return [ApiResponse]
  describe 'ver_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end