require 'rails_helper'

RSpec.describe User, type: :model do
	describe "creation" do
		before do
		 @user = User.create(email: "test@test.com", password: "Darren", password_confirmation: "Darren", first_name: "Me", last_name: "hello")
		end

		it "can be created" do
			expect(@user).to be_valid
		end

		it "cannot be valid without first_name, last_name" do
			@user.first_name = nil
			@user.last_name = nil
			expect(@user).to_not be_valid
		end
	end
end