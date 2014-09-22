module OpenId
  module ActiveRecord
    module Store
      class Nonce < ::ActiveRecord::Base
        self.table_name = 'open_id_nonces'
      end
    end
  end
end
