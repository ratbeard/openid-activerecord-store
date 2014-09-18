module OpenId
  module ActiveRecord
    module Storage
      class Railtie < ::Rails::Railtie

        generators do
          load "generators/open_id/active_record/store/store_generator"
        end

      end
    end
  end
end