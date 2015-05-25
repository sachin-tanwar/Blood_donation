class Donor < ActiveRecord::Base

	def self.search(search)
		if search
			#find(:all, :conditions => ['blood_group LIKE ?', '%#{params[:search]}%'])
			#where(["blood_group LIKE ?","%#{:search}"])
			#where(blood_group: 'A+', area: 'Indore')
			where(blood_group: '#{:search}')
		else
			all
			#where(blood_group: 'B+', area: 'Indore')
		end
	end
end
