require 'test_helper'

class Users::XmppAccountsControllerTest < ActionController::TestCase
  setup do
    @users_xmpp_account = users_xmpp_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_xmpp_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_xmpp_account" do
    assert_difference('Users::XmppAccount.count') do
      post :create, users_xmpp_account: { jid: @users_xmpp_account.jid, password: @users_xmpp_account.password, port: @users_xmpp_account.port, use_ssl: @users_xmpp_account.use_ssl }
    end

    assert_redirected_to users_xmpp_account_path(assigns(:users_xmpp_account))
  end

  test "should show users_xmpp_account" do
    get :show, id: @users_xmpp_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_xmpp_account
    assert_response :success
  end

  test "should update users_xmpp_account" do
    patch :update, id: @users_xmpp_account, users_xmpp_account: { jid: @users_xmpp_account.jid, password: @users_xmpp_account.password, port: @users_xmpp_account.port, use_ssl: @users_xmpp_account.use_ssl }
    assert_redirected_to users_xmpp_account_path(assigns(:users_xmpp_account))
  end

  test "should destroy users_xmpp_account" do
    assert_difference('Users::XmppAccount.count', -1) do
      delete :destroy, id: @users_xmpp_account
    end

    assert_redirected_to users_xmpp_accounts_path
  end
end
