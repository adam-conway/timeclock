class PunchinController < ApplicationController
	def index
		@punchin = Punchin.all
	end

	def show
		@punchin = Punchin.find(params[:id])
	end

	def new
		@punchin = Punchin.new
	end

	def edit
		@punchin = Punchin.find(params[:id])
	end

	def create
		@punchin = Punchin.new(punchin_params)

		@punchin.save
		redirect_to @punchin
	end

	def update
		@punchin = Punchin.find(params[:id])

		if @punchin.update(punchin_params)
			redirect_to @punchin
		else
			render 'edit'
		end
	end

	def destroy
		@punchin = Punchin.find(params[:id])
		@punchin.destroy

		redirect_to punchin_index_path
	end

	private
		def punchin_params
			params.require(:punchin).permit(:client, :time)
		end
end
