GuardiansController < ApplicationController
	def new
		@guardian = Guardian.new
	end

	def create
		@guardian = Guardian.new(guardian.params)
		@guardian.password = rand(10 ** 5)
	end

	def index
		@guardians = Guardian.all
	end

	def guardian_params
		params.require(:guardian).permit(:guardian_first_name, :guardian_last_name, :password)
	end
end