class ClientsController < ApplicationController
	def index
		@client = Client.all
	end

	def show
		@client = Client.find(params[:id])
	end

	def new
	end

	def create
		@client = Client.new(client_params)

		@client.save
		redirect_to @client
	end

	private
		def client_params
			params.require(:client).permit(:client_name, :client_rate)
		end


end
