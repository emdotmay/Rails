class User < ActiveRecord::Base
  attr_accessible :age, :firstname, :lastname, :email
  has_many :review

def is_teen?(scooby)
  if User.age > 19 
  	return false
  elsif User.age < 12 
  	return false
  else 
  	return true
end

def has_long_name?(scooby)
	return true if User.firstname.length + User.lastname.length > 10
end

end
