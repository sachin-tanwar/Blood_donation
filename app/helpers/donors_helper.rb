module DonorsHelper
	def donor_params
	  params.require(:donor).permit(:name, :blood_group, :phone_no, :area, :message)
	end

end