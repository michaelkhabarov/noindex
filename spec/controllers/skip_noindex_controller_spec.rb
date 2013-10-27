require 'spec_helper'

describe SkipNoindexController do

  it 'does not assign @noindex for new action' do
    get 'new'
    assigns(:noindex).should_not be
  end

  it 'assigns @noindex for edit action' do
    get 'edit'
    assigns(:noindex).should be_true
  end

  it 'does not assign @noindex for index action' do
    get 'index'
    assigns(:noindex).should_not be
  end

end
