require 'spec_helper'

describe 'Noindex meta tag' do
  it 'is located on /default/new' do
    get '/default/new'
    assert_select 'meta[name="robots"][content="noindex"]'
  end

  it 'is not located on /default/index' do
    get '/default/index'
    assert_select 'meta[name="robots"][content="noindex"]', false
  end
end
