require_relative 'mixins'

module Ramda
  # String functions
  module String
    extend Ramda::Mixins

    # The upper case version of a string.
    #
    # String -> String
    #
    curried_method(:to_upper, &:upcase)

    # The lower case version of a string.
    #
    # String -> String
    #
    curried_method(:to_lower, &:downcase)
  end
end
