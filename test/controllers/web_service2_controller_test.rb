require 'test_helper'
require 'net/http'

class WebService2ControllerTest < ActionDispatch::IntegrationTest
  test "should not verify user" do
    base_url =  Rails.application.config.webservice2_url
    url = URI::join(base_url, '/rest/verify_user/unknow@domain.com?format=json')
    request = Net::HTTP::Post.new(url.path)
    request.body = {image: ":lkjlkjkljl"}.to_json
    response = Net::HTTP.start(url.host, url.port) {|http| http.request(request)}

    #Note this test PASSES!
    result = JSON.parse(response.body)
    assert_equal 'No Autorizado', result["message"]
  end

  test "should verify user" do
    base_url =  Rails.application.config.webservice2_url
    url = URI::join(base_url, '/rest/verify_user/contacto@aimmanager.com?format=json')
    request = Net::HTTP::Post.new(url.path)
    request.body = {image: ":lkjlkjkljl"}.to_json
    response = Net::HTTP.start(url.host, url.port) {|http| http.request(request)}

    #Note this test PASSES!
    result = JSON.parse(response.body)
    assert_equal 'No Autorizado', result["message"]
  end

end
