class SkipNoindexController < ApplicationController
  skip_noindex only: [ :new ]

  def new
  end

  def edit
  end

  def index
  end
end
