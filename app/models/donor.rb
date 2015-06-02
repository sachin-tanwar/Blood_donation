class Donor < ActiveRecord::Base


	def self.search(blood_group, area)

		return unless blood_group.present? && area.present?

		where(['blood_group LIKE ? AND area LIKE ?', "%#{blood_group}%", "%#{area}%"])

		# if blood
		# 	#find(:all, :conditions => ['blood_group LIKE ?', '%#{params[:search]}%'])
		# 	#where(["blood_group LIKE ?","%#{:search}"])
		# 	where(blood_group: "%#{blood}%")
		# 	#where(blood_group: '#{:search1}')
		# else
		# 	all
		# 	#where(blood_group: 'B+', area: 'Indore')
		# end
	end
end
