module HarukiZaemon
  module ActsAsTeapot
    module ActionController
      module Routing
        def self.included(base)
          base::HTTP_METHODS << :brew
        end
      end
    end
  end
end
