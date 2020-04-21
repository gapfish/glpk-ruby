require "glpk/version"
require 'ffi'

module GLPK
  extend FFI::Library
  ffi_lib ['libglpk']

  attach_function :glp_create_prob, [], :pointer
  attach_function :glp_delete_prob, [:pointer], :void

  attach_function :glp_set_prob_name, [:pointer, :string], :pointer
  attach_function :glp_get_prob_name, [:pointer], :string
end
