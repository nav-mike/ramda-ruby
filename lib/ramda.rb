require 'forwardable'

require 'ramda/version'
require 'ramda/exception_handler'
require 'ramda/function'
require 'ramda/list'
require 'ramda/logic'
require 'ramda/math'
require 'ramda/object'
require 'ramda/relation'
require 'ramda/string'
require 'ramda/type'

# Ramda library implementation, source: http://ramdajs.com/
# rubocop:disable Metrics/ModuleLength
module Ramda
  extend SingleForwardable

  def_delegators Ramda::Function,
                 :F,
                 :T,
                 :__,
                 :always,
                 :ap,
                 :apply,
                 :binary,
                 :bind,
                 :comparator,
                 :compose,
                 :construct,
                 :construct_n,
                 :converge,
                 :curry,
                 :curry_n,
                 :empty,
                 :flip,
                 :identity,
                 :invoker,
                 :juxt,
                 :lift,
                 :lift_n,
                 :memoize,
                 :n_ary,
                 :of,
                 :once,
                 :pipe,
                 :tap,
                 :unapply,
                 :unary,
                 :use_with

  def_delegators Ramda::List,
                 :all,
                 :any,
                 :append,
                 :chain,
                 :concat,
                 :contains,
                 :drop,
                 :filter,
                 :from_pairs,
                 :find,
                 :find_index,
                 :find_last,
                 :find_last_index,
                 :flatten,
                 :for_each,
                 :group_by,
                 :head,
                 :index_of,
                 :insert,
                 :join,
                 :last,
                 :last_index_of,
                 :length,
                 :slice,
                 :sort,
                 :map,
                 :nth,
                 :partition,
                 :pluck,
                 :prepend,
                 :range,
                 :reduce,
                 :reduce_right,
                 :reject,
                 :remove,
                 :repeat,
                 :reverse,
                 :tail,
                 :take,
                 :take_while,
                 :times,
                 :uniq,
                 :uniq_with,
                 :unnest,
                 :update,
                 :xprod,
                 :zip,
                 :zip_obj,
                 :zip_with

  def_delegators Ramda::Logic,
                 :all_pass,
                 :and,
                 :any_pass,
                 :complement,
                 :cond,
                 :if_else,
                 :is_empty,
                 :not,
                 :or

  def_delegators Ramda::Math,
                 # :math_mod,
                 :add,
                 :dec,
                 :divide,
                 :inc,
                 :modulo,
                 :multiply,
                 :negate,
                 :product,
                 :subtract,
                 :sum

  def_delegators Ramda::Object,
                 # :keys_in,
                 # :to_pairs_in,
                 # :values_in,
                 :assoc,
                 :assoc_path,
                 :clone,
                 :dissoc,
                 :eq_props,
                 :has,
                 :has_in,
                 :keys,
                 :lens,
                 :lens_index,
                 :lens_path,
                 :lens_prop,
                 :merge,
                 :omit,
                 :over,
                 :path,
                 :pick,
                 :pick_all,
                 :pick_by,
                 :project,
                 :prop,
                 :prop_or,
                 :props,
                 :set,
                 :to_pairs,
                 :values,
                 :view,
                 :where

  def_delegators Ramda::Relation,
                 :count_by,
                 :difference,
                 :difference_with,
                 :eq_by,
                 :equals,
                 :gt,
                 :gte,
                 :intersection,
                 :lt,
                 :lte,
                 :max,
                 :max_by,
                 :min,
                 :min_by,
                 :path_eq,
                 :prop_eq,
                 :sort_by,
                 :union,
                 :union_with

  def_delegators Ramda::String,
                 :match,
                 :replace,
                 :split,
                 :to_lower,
                 :to_upper,
                 :trim

  def_delegators Ramda::Type,
                 :is,
                 :is_nil,
                 :type

  def self.exception_handler=(handler)
    @exception_handler = handler
  end

  def self.exception_handler
    @exception_handler ||= ::Ramda::ExceptionHandler.method(:with_narrow)
  end
end
