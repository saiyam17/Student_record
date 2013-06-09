class Students < ActiveRecord::Base
  attr_accessible :name, :username, :password, :std, :section, :email_id, :mobile_number

end
