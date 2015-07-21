class AddUserToUserRecords < ActiveRecord::Migration
  def change
    add_reference :user_records, :user, index: true
  end
end
