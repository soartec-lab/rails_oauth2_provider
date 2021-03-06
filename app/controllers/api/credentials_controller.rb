module Api
  class CredentialsController < ApiController
    # loginメソッドを外部から呼び出す際にdoorkeeperで認証処理する
    before_action :doorkeeper_authorize!

    def login
      render json: { user: current_resource_owner }
    end
  end
end
