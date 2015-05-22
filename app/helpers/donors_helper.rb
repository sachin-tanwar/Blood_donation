module DonorsHelper
	def donor_params
	  params.require(:donor).permit(:name, :blood_group, :phone_no,:phone_no2, :address, :area, :message)
	end

end