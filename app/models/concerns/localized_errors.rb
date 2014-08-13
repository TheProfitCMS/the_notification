module TheNotification
  module LocalizedErrors
    extend ActiveSupport::Concern

    # include TheNotification::LocalizedErrors

    def localized_errors
      errors.inject({}) do |hash, (k, v)|
        k = self.class.human_attribute_name k
        hash[k].blank? ? hash[k] = [v] : hash[k].push(v)
        hash
      end
    end
  end
end
