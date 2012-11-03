class Club < ActiveRecord::Base
	has_many :roles, :dependent => :destroy
	has_many :users, :through => :roles
	accepts_nested_attributes_for :roles, :allow_destroy => true
	#accepts_nested_attributes_for :users, :reject_if => :all_blank, :allow_destroy => true
	
	has_many :teams

	def admin?(user)
		r = self.roles.find_by_user_id(user.id)
	    return r.is_admin
	end

	def coach?(user)
		r = self.roles.find_by_user_id(user.id)
	    return r.is_coach
	end

	def doctor?(user)
		r = self.roles.find_by_user_id(user.id)
	    return r.is_doctor
	end

	def manager?(user)
		r = self.roles.find_by_user_id(user.id)
	    return r.is_manager
	end

end