module Ecm
  module Videos
    module Backend
      class CategoriesController < Itsf::Backend::Resource::BaseController
        include ResourcesController::Sorting
        include ResourcesController::ActsAsPublishedConcern
        
        def self.resource_class
          Ecm::Videos::Category
        end

        private

        def permitted_params
          params.require(:category).permit(*%w(description locale name markup_language published))
        end
      end
    end
  end
end
