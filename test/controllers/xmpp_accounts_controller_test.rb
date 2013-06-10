require 'test_helper'

class XmppAccountsControllerTest < ActionController::TestCase
  setup do
    @xmpp_account = xmpp_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:xmpp_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create xmpp_account" do
    assert_difference('XmppAccount.count') do
      post :create, xmpp_account: { jid: @xmpp_account.jid, password: @xmpp_account.password, port: @xmpp_account.port, use_ssl: @xmpp_account.use_ssl }
    end

    assert_redirected_to xmpp_account_path(assigns(:xmpp_account))
  end

  test "should show xmpp_account" do
    get :show, id: @xmpp_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @xmpp_account
    assert_response :success
  end

  test "should update xmpp_account" do
    patch :update, id: @xmpp_account, xmpp_account: { jid: @xmpp_account.jid, password: @xmpp_account.password, port: @xmpp_account.port, use_ssl: @xmpp_account.use_ssl }
    assert_redirected_to xmpp_account_path(assigns(:xmpp_account))
  end

  test "should destroy xmpp_account" do
    assert_difference('XmppAccount.count', -1) do
      delete :destroy, id: @xmpp_account
    end

    assert_redirected_to xmpp_accounts_path
  end
end
