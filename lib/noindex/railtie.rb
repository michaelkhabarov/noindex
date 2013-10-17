require "noindex/controller"
require "noindex/view_helpers"

module Noindex
  class Railtie < Rails::Railtie

    initializer 'noindex.controller' do
      ActiveSupport.on_load :action_controller do
        include Noindex::Controller
      end
    end

    initializer 'noindex.helper' do
      ActiveSupport.on_load :action_view do
        include Noindex::ViewHelpers
      end
    end
  end
end
