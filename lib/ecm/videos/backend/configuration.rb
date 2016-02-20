require 'active_support/core_ext/module/delegation'
require 'active_support/core_ext/module/attribute_accessors'

module Ecm
  module Videos
    module Backend
      module Configuration
        def configure
          yield self
        end

        mattr_accessor :registered_controllers do
          lambda do
            [
              Ecm::Videos::Backend::CategoriesController,
              Ecm::Videos::Backend::VideosController
            ]
          end
        end

        mattr_accessor :registered_services do
          -> { [] }
        end
      end
    end
  end
end
