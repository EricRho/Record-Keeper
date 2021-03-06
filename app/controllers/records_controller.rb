class RecordsController < ApplicationController
  before_action :set_record, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @records = current_user.records.all
    respond_with(@records)
  end

  def show
    respond_with(@record)
  end

  def new
    # @record = Record.new
    # respond_with(@record)
    @record = current_user.records.create
  end

  def edit
  end

  def create
    # @record = Record.new(record_params)
    # @record.save
    # respond_with(@record)
    @record = Record.new(record_params)
    if @record.save
      redirect_to @record
    else
      render 'new'
    end
  end

  def update
    @record.update(record_params)
    respond_with(@record)
  end


  def destroy
    @record.destroy
    respond_with(@record)
  end

  private

  def set_record
    @record = Record.find(params[:id])
  end

  def record_params
    params.require(:record).permit(:title, :artist, :year, :label, :genre, :discs, :tracks, :album_art_url, :user_id)
  end
end
