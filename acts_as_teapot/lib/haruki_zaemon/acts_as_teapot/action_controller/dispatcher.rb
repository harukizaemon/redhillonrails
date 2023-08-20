module HarukiZaemon
  module ActsAsTeapot
    module ActionController
      module Dispatcher
        include ::ActionController::StatusCodes

        def self.included(base)
          base.alias_method_chain :handle_request, :acts_as_teapot
        end

        protected

          def handle_request_with_acts_as_teapot
            if brew_request? || htcpcp_request?
              process
            else
              handle_request_without_acts_as_teapot
            end
          end

        private

          def process
            @response.headers['Status'] = interpret_status(:im_a_teapot)
            @response.body = "Short and Stout"
            @response.prepare!
            @response.out(@output)
          end

          def brew_request?
            @request.method == :brew
          end
          
          def htcpcp_request?
            @request.content_type && @request.content_type == Mime::HTCPCP
          end
      end
    end
  end
end
