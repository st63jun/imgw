class PostController < ApplicationController
  respond_with :json

  JID = 'imgw@jabber.org'
  PASSWORD = 'rjR2urVi'

  def create
    cli = Jabber::Client.new(JID)
    cli.connect()
    cli.auth(PASSWORD)
    cli.send(Message.new(params[:message])
  end

  private
  def post_params
    params.require(:message)
  end
end
