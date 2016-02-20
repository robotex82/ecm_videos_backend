module Ecm
  module Videos
    module Backend
      class Engine < ::Rails::Engine
        isolate_namespace Ecm::Videos::Backend
      end
    end
  end
end
