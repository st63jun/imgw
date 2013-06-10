class CreateXmppAccounts < ActiveRecord::Migration
  def change
    create_table :xmpp_accounts do |t|
      t.integer :user_id 
      t.string :jid
      t.string :password
      t.integer :port
      t.boolean :use_ssl

      t.timestamps
    end
  end
end
