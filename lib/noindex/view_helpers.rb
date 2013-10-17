module Noindex

  module ViewHelpers

    def noindex_meta_tag
      tag(:meta, name: 'robots', content: 'noindex') if @noindex
    end

    def noindex
      @noindex = true
    end

    def index
      @noindex = false
    end

  end

end
