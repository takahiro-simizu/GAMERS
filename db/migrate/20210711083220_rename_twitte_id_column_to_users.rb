class RenameTwitteIdColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :twitte_id, :twitter_id
  end
end
