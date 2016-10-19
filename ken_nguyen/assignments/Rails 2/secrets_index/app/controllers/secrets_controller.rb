class SecretsController < ApplicationController
  before_action :show_all_secrets, only: [:index]

  def index
  end

  private
  def show_all_secrets
    @secrets = Secret.all
  end
end
