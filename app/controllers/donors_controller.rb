class DonorsController < ApplicationController

	include DonorsHelper

	def index
		 #@donor= Donor.new
		# @donors = Donor.all
		#@donors = Donor.where(blood_group: 'A+', area: 'Indore')
		#@donors=Donor.search(params[:blood_group])
	end	

	def show
		@donor = Donor.find(params[:id])
	end

	def new
		@donor = Donor.new
	end

	def create
		@donor = Donor.new(donor_params)
        @donor.save
   	   redirect_to donor_path(@donor)
	end

	def edit
		 @donor = Donor.find(params[:id])
	end

	def update
		@donor = Donor.find(params[:id])
		@donor.update(donor_params)

		flash.notice = "Information of '#{@donor.name}' Updated!"

		redirect_to donor_path(@donor)
	end

	 def find

	 	@donors = Donor.search(params[:blood_group], params[:area]).all unless params[:blood_group].nil? && params[:area].nil?

	 	#@donors = Donor.where("blood_group LIKE ? ", "%#{params[:blood_group]}%")

	 	#@donors = Donor.search(params[:blood_group])

	 	#donors = Donor.all
	 	#donors = donors.where(blood_group: '#{:search}')
	 	#@donors = Donor.find(params[:blood_group])
		#@donor=Donor.find(index)
		#@donors = donors.where(blood_group: '#{params[:blood_group]}')
		#flash.notice = "Information not found !!"
		#redirect_to donors_path(@donor)
		#@donors = Donor.where(blood_group: 'B+', area: 'Indore')		
		#redirect_to donors_find_path(@donors)
	 end

	 


end
