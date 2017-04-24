require 'test_helper'

class ValidUserTest < ActiveSupport::TestCase

  def setup
    @item = ValidUser.new(email: "test.email1@domain.com")
  end

  test "email should be unique" do
    begin
      assert_raises ActiveRecord::RecordNotUnique do
        @item.save
      end
    end
  end
end
