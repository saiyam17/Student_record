class Students < ActiveRecord::Base
  attr_accessible :name, :username, :password, :std, :section, :email_id, :mobile_number
EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
# new "sexy" validations
  validates :name, :presence => true, :length => { :maximum => 25 }
  validates :username, :length => { :within => 3..25 }, :uniqueness => true
  validates :password, :length => { :within => 5..25 }, :presence => true
  validates :std, :presence => true, :length => { :maximum => 10 }
  validates :section, :presence => true, :length => { :maximum => 10 }
 
  validates :email_id, :presence => true, :length => { :maximum => 40 }, 
    :format => EMAIL_REGEX, :confirmation => true
    validates :mobile_number, :presence => true, :length => { :is =>10}

end
