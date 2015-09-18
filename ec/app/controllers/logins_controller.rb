class LoginsController < ApplicationController
  def index
  end

  def login
    redirect_to dashboards_path
  end
end
