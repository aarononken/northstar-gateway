class GuardiansController < ApplicationController
	def new
		@guardian = Guardian.new
	end

	def create
		@guardian = Guardian.new(guardian_params)

		if @guardian.save
			redirect_to root_url, notice: "Successfully created!"
		else
			render :new, alert: "Something was wrong. Try again."
		end
	end

	def index
		@guardians = Guardian.all
	end

	def guardian_params
		params.require(:guardian).permit(:guardian_first_name, :guardian_last_name, :family_id, :password)
	end
end