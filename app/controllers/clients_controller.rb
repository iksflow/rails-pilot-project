class ClientsController < ApplicationController
  def index
    if params[:status] == "activated"
      @clients = Client.activated
    else
      @clients = Client.inactivated
    end
  end

  def create
    @client = Client.new
  end
end
