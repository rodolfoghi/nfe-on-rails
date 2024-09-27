class UfsController < ApplicationController
  def index
    @ufs = Uf.all
  end
end
