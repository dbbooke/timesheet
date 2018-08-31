require 'rails_helper'

RSpec.describe User, type: :model do
		before do
		 	@user = User.create!(email: "hi@test.com", password: "Darren", password_confirmation: "Darren", first_name: "Me", last_name: "hello")
		end
		describe "creation" do
			it "can be created" do
				expect(@user).to be_valid
			end

			it "cannot be valid without first_name, last_name" do
				@user.first_name = nil
				@user.last_name = nil
				expect(@user).to_not be_valid
			end
		end

		describe "custom name methods" do
			it "has custom methods that combines first and last name" do
			expect(@user.full_name).to eq("HELLO, ME")
		end
	end
end
