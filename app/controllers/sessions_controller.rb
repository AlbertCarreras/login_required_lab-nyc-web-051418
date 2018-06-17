class SessionsController < ApplicationController

  def index
    if session[:name].nil? || session[:name].empty?
      redirect_to '/login'
    end
  end

  def new
    if session[:name].present?
      redirect_to '/'
    end
  end

  def create
    if params[:sessions].nil? || params[:sessions][:name].empty?
      flash[:notice]="Please, enter username"
      redirect_to '/login'
    else
      session[:name] = params[:sessions][:name]
      redirect_to '/'
    end

  end

  def destroy
    session.delete :name
    redirect_to '/'
  end


end
