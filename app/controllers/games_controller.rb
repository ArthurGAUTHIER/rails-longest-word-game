class GamesController < ApplicationController
  def new
    @grid = []
    voyelle = []
    consonne = []

    200.times do
      voyelle << ['A', 'E', 'I', 'O', 'U', 'Y'].sample
    end

    200.times do
      consonne << ['B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Z'].sample
    end

    5.times do
      @grid << voyelle.shuffle.pop
      @grid << consonne.shuffle.pop
      @grid.shuffle!
    end
    @grid
  end

  def score

  end
end
