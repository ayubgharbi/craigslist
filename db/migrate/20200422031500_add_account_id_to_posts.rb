class AddAccountIdToPosts < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :account
  end
end
