module Ecm
  module Videos
    module Backend
      class VideosController < Itsf::Backend::Resource::BaseController
        include ResourcesController::Sorting
        include ResourcesController::ActsAsListConcern
        include ResourcesController::ActsAsPublishedConcern

        def self.resource_class
          Ecm::Videos::Video
        end

        private

        def load_collection_scope
          super.includes(:category)
        end

        def permitted_params
          params.require(:video).permit(*%w(category_id clip description name markup_language published))
        end
      end
    end
  end
end
