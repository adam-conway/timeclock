class PunchinController < ApplicationController
	def index
		@punchin = Punchin.all
	end

	def show
		@punchin = Punchin.find(params[:id])
	end

	def new
	end

	def create
		@punchin = Punchin.new(punchin_params)

		@punchin.save
		redirect_to @punchin
	end

	private
		def punchin_params
			params.require(:punchin).permit(:client, :time)
		end
end
