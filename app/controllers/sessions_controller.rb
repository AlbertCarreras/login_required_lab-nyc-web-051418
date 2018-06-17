class SessionsController < ApplicationController

  def index
    if session[:name].nil? || session[:name].empty?
      redirect_to '/login'
    end
  end

  def new

  end

  def create
    if params[:sessions][:name].nil? || params[:sessions][:name].empty?
      flash[:notice]="Please, enter username"
      render :new
    else
      @current_user = params[:sessions][:name]
      current_user << @current_user
      redirect_to '/'
    end

  end

  def destroy
    session.delete :name
    redirect_to '/'
  end


end
