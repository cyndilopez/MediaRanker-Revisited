require "test_helper"
# Add tests around logging in functionality using OAuth mocks
# Add tests around logging out functionality using OAuth mocks
describe UsersController do
  describe "create" do
    it "gets the login path" do
      get github_login_path
      must_respond_with :redirect
    end
  end
end
