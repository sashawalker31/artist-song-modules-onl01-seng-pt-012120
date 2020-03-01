#require_relative '../lib/concerns/memorable'

module Memorable

  include ClassMethods

    def reset_all
      ClassMethods.all.clear
    end

    def count
      ClassMethods.all.count
    end

  end

  module InstanceMethods

    def initialize
      self.class.all << self
    end
  end

end