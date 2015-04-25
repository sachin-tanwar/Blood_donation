class DonorsController < ApplicationController

	include DonorsHelper

	def index
		@donor= Donor.new
		@donors = Donor.all
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

	


end
