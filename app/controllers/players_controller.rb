class PlayersController < ApplicationController

  def index
    @players = Player.all.order(:last_name, :first_name)
  end

  def show
    @player = Player.find(params[:id])
    @stats = @player.stats
  end

end
