class Donor < ActiveRecord::Base

	def self.search(search)
		if search
			find(:all, :conditions => ['blood_group LIKE ?', '%#{params[:search]}%'])
		else
			find(:all)
		end
	end
end
