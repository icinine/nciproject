require 'test_helper'

class UserTest ActiveSupport::TestCase
   
    def setup
        @user = User.new(username: "Shane", email: "shane@gmail.com")
    end 
    
    
    test "user should be valid" do
       assert @user.valid? 
    end
    
    test "username should be present" do
       @user.username = " "
       assert_not @user.valid?
    end
    
    test "username should not be too long" do
        @user.username = "a" * 41
        assert_not @user.valid?
    end
    
    
    test "username should not be too short" do
               @user.username = "aa"
        assert_not @user.valid?
    end
    
    test "email address should be unique" do
       dup_user = @user.dup
       dup_user.email = @user.email.upcase
       @user.save
       assert_not dup_user.valid?
    end
end