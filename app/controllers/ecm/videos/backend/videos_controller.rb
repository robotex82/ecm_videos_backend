module Ecm
  module Videos
    module Backend
      class VideosController < Itsf::Backend::Resource::BaseController
        include Controller::ActsAsListConcern
        include Controller::ActsAsPublishedConcern

        def self.resource_class
          Ecm::Videos::Video
        end

        private

        def permitted_params
          params.require(:video).permit(*%w(category_id clip description name markup_language published))
        end
      end
    end
  end
end
