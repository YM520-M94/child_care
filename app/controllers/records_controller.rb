class RecordsController < ApplicationController
  before_action :set_record, except: [:index, :new, :create]

  def index
    @records = Record.all
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @record.update(record_params)
      redirect_to: record_path(@record)
    else
      render :edit
    end
  end

  def destroy
    
  end

  private

  def record_params
    params.require(:record).permit(:date, :weather, :title, :diary, :image).merge(user_id: current_user.id)
  end
  
  def set_record
    @record = Record.find(params[:id])
  end
end
