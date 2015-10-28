class SampleformsController < ApplicationController
	def index
		@sampleforms = Sampleform.all
	end

	def new
		@sampleform = Sampleform.new
	end

	def create
		@sampleform = Sampleform.new(ad_params)
		if @sampleform.save
			redirect_to sampleforms_path
		end
	end

	def destroy
		@sampleform = Sampleform.find_by_id(params[:id])
		if @sampleform.destroy
			redirect_to sampleforms_path
		end
	end

	private

	def ad_params
		params.require(:sampleform).permit(:firstname, :lastname, :gender, :address, :country)
	end
end
