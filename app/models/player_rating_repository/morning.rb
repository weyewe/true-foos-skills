require 'saulabs/trueskill'

module PlayerRatingRepository
  class Morning < Base
    def games
      #games in morning MST -> DB times are in UTC
      Game.non_deleted.relevant_for_ranking.where("date_part('hour', created_at) >= 6 AND date_part('hour', created_at) < 18").all
    end
  end
end
