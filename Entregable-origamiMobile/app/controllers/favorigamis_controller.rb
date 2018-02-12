class FavorigamisController < ApplicationController
def index
  @origamis = Origami.favs
end
end
