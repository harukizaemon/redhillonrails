module HarukiZaemon
  module ActsAsTeapot
    module ActionController
      module StatusCodes
        def self.included(base)
          base::STATUS_CODES[418] = "I'm a teapot"
          base::SYMBOL_TO_STATUS_CODE[:im_a_teapot] = 418
        end
      end
    end
  end
end
