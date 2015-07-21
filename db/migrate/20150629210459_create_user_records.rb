class CreateUserRecords < ActiveRecord::Migration
  def change
    create_table :user_records do |t|

      t.timestamps
    end
  end
end
