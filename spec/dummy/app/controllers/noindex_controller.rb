class NoindexController < ApplicationController
  noindex only: [ :new, :index ]

  def new
  end

  def edit
  end

  def index
  end
end
