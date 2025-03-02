class SchoolClassesController < ApplicationController
  before_action :set_school_class, only: [:show, :edit, :update]

  def index
    @school_classes = SchoolClass.all
  end
  
  def show
  end

  def new
  end

  def create
    school_class = SchoolClass.create(title: params[:school_class_title], room_number: params[:school_class_room_number])
    redirect_to school_class
  end

  def edit
  end

  def update
    school_class = @school_class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to school_class_path
  end

  private

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end
end