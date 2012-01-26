module Citier
  module Base
    def self.included(base)
      base.send :extend, ClassMethods
    end

    module ClassMethods
      def acts_as_citier(options = {})
        send :include, InstanceMethods
      end
    end

    module InstanceMethods
    end
  end
end

ActiveRecord::Base.send :include, Citier::Base