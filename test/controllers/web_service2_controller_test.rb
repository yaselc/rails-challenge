require 'test_helper'
require 'net/http'

require 'webservice2_client'

class WebService2ControllerTest < ActionDispatch::IntegrationTest

  test "assert 200 response" do
    api_instance = WebService2Client::UserApi.new

    email = "test.email1@domain.com" # String | User email to verify

    image = WebService2Client::UserImage.new # UserImage | Image uploaded by user
    image.image ="TWFuUgb2YgYW55IGNhcm5hbCBwbGVhc3VyZS4="

    opts = {
        format: "json" # String |
    }

    begin
      #Verify user
      result = api_instance.ver_user(email, image, opts)
      assert_equal 'OK', result.message
    rescue WebService2Client::ApiError => e
      puts "Exception when calling UserApi->ver_user: #{e}"
    end
  end

  test "assert 401 response" do
    api_instance = WebService2Client::UserApi.new

    email = "test.email3@domain.com" # String | User email to verify

    image = WebService2Client::UserImage.new # UserImage | Image uploaded by user
    image.image ="TWFuUgb2YgYW55IGNhcm5hbCBwbGVhc3VyZS4="

    opts = {
        format: "json" # String |
    }

    begin
      assert_raises WebService2Client::ApiError do
        #Verify user
        api_instance.ver_user(email, image, opts)
      end
    end
  end

  test "classic post should not verify user" do
    base_url =  Rails.application.config.webservice2_url
    url = URI::join(base_url, '/rest/verify_user/unknow@domain.com?format=json')
    request = Net::HTTP::Post.new(url.path)
    request.set_form_data({"image" => "=/dfsdlfjssdfsdff"})
    response = Net::HTTP.start(url.host, url.port) {|http| http.request(request)}

    #Note this test PASSES!
    result = JSON.parse(response.body)
    assert_equal 'No Autorizado', result["message"]
  end

  test "classic post should verify user" do
    base_url =  Rails.application.config.webservice2_url
    url = URI::join(base_url, '/rest/verify_user/test.email1@domain.com?format=json')
    request = Net::HTTP::Post.new(url.path)
    request.set_form_data({"image" => "=/dfsdlfjssdfsdff"})
    response = Net::HTTP.start(url.host, url.port) {|http| http.request(request)}

    #Note this test PASSES!
    result = JSON.parse(response.body)
    assert_equal 'OK', result["message"]
  end

end
