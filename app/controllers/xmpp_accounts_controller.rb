class XmppAccountsController < ApplicationController
  before_action :set_xmpp_account, only: [:show, :edit, :update, :destroy]

  # GET /xmpp
  # GET /xmpp.json
  def show
  end

  # GET /xmpp/new
  def new
    @xmpp_account = XmppAccount.new
  end

  # GET /xmpp/edit
  def edit
  end

  # POST /xmpp
  # POST /xmpp.json
  def create
    @xmpp_account = XmppAccount.new(xmpp_account_params)
    @xmpp_account.user_id = current_user.id

    respond_to do |format|
      if @xmpp_account.save
        format.html { redirect_to :root, notice: 'Xmpp account was successfully created.' }
        format.json { render action: 'show', status: :created, location: @xmpp_account }
      else
        format.html { render action: 'new' }
        format.json { render json: @xmpp_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /xmpp
  # PATCH/PUT /xmpp.json
  def update
    respond_to do |format|
      if @xmpp_account.update(xmpp_account_params)
        format.html { redirect_to :root, notice: 'Xmpp account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @xmpp_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xmpp
  # DELETE /xmpp.json
  def destroy
    @xmpp_account.destroy
    respond_to do |format|
      format.html { redirect_to :root }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xmpp_account
      @xmpp_account = current_user.xmpp_account
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def xmpp_account_params
      params.require(:xmpp_account).permit(:jid, :password, :port, :use_ssl)
    end
end
