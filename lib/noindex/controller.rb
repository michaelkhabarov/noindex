module Noindex
  module Controller

    module ClassMethods
      def noindex *args
        before_action :noindex, *args
      end

      def skip_noindex *args
        skip_before_action :noindex, *args
      end
    end

    module InstanceMethods
      def noindex
        @noindex = true
      end
    end

    def self.included(receiver)
      receiver.extend         ClassMethods
      receiver.send :include, InstanceMethods

      receiver.hide_action :noindex
      receiver.noindex only: [ :new, :edit ]
    end

  end
end
