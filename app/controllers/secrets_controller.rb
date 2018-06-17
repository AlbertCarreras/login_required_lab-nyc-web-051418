class SecretsController < ApplicationController

  before_action :require_login

  def index

  end

private

  def require_login
    if !session.include? :name
      redirect_to "/login"
    end
  end

end
