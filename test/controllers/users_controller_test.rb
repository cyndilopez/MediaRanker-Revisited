require "test_helper"
# Add tests around logging in functionality using OAuth mocks
# Add tests around logging out functionality using OAuth mocks
describe UsersController do
  describe "auth callback" do
    it "can log in an existing user" do
      user = User.first
      #Act
      expect {
        perform_login(user)
      }.wont_change "User.count"
      #   expect(flash[:status]).must_equal :success
      #Assert
      expect(session[:user_id]).must_equal user.id
      must_redirect_to root_path
    end

    it "can log in a new user" do
    end
  end
  #   describe "create" do
  #     it "gets the login path" do
  #       get github_login_path
  #       must_respond_with :redirect
  #     end

  #     it "successfully logs in" do
  #     end
  #   end

  describe "logged-in users" do
    before do
      #   @user = perform_login
    end
  end
end
