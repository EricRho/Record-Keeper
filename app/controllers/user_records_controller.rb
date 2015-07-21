class UserRecordsController < ApplicationController

  def index
  end

  def new
    @stock = current_user.user_records.build
  end

  def create
    @user_records = User_records.new(user_records.params)
    if @user_records.save
      redirect_to @user_record, notice: 'Record was successfully added'
    else
      render 'new'
    end
  end
end
