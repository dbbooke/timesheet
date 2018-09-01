FactoryBot.define do

	sequence :email do |n|
	    "test#{n}@example.com"
	  end

	factory :user do
	first_name { 'Me' }
	last_name { 'hello' }
	email { generate :email }
	password { 'Darren' }
	password_confirmation { 'Darren' }
	end


	factory :admin_user, class: 'AdminUser' do
	first_name { 'Me' }
	last_name { 'hello' }
	email { generate :email }
	password { 'Darren' }
	password_confirmation { 'Darren' }
	end
end
