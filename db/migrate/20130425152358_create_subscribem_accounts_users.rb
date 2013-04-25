class CreateSubscribemAccountsUsers < ActiveRecord::Migration
  def change
    create_table :subscribem_accounts_users do |t|
      t.references :account
      t.references :user

      t.timestamps
    end
    add_index :subscribem_accounts_users, :user_id
  end
end
