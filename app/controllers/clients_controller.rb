class ClientsController < ApplicationController
	def index
		@client = Client.all
	end

	def show
		@client = Client.find(params[:id])
	end

	def new
	end

	def list_of_client_names
		@client_array = [client.client_name.each]
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
