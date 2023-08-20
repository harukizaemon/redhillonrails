module HarukiZaemon
  module ActsAsTeapot
    module ActionController
      module AbstractRequest
        def self.included(base)
          base::HTTP_METHODS << "brew"
          base::HTTP_METHOD_LOOKUP["BREW"] = :brew
        end
      end
    end
  end
end
