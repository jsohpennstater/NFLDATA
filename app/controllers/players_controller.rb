class PlayersController < ApplicationController

  def index
    @players = Player.all.order(:last_name, :first_name)
  end

  def show
    @player = Player.find(params[:id])
    @stats = @player.stats
    @total_yards = 0
    @total_attempts = 0

    @stats.each do |stat|
      @total_yards += stat.yds
      if stat.att != nil
          @total_attempts += stat.att
      end
    end
  end

end
