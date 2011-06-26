require 'data_objects'

require 'data_objects/schema/database'
require 'data_objects/schema/table'
require 'data_objects/schema/column'
require 'data_objects/schema/column/integer'
require 'data_objects/schema/column/string'

module DataObjects
  module Schema

    def self.load(uri)
      raise NotImplementedError
    end

  end
end

