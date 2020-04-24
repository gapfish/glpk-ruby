require "glpk/version"
require 'ffi'

module GLPK
  extend FFI::Library
  ffi_lib ['libglpk']

  # prob functions
  attach_function :glp_create_prob, [], :pointer
  attach_function :glp_delete_prob, [:pointer], :void
  attach_function :glp_set_prob_name, [:pointer, :string], :pointer
  attach_function :glp_get_prob_name, [:pointer], :string

  # obj functions
  attach_function :glp_set_obj_dir, [:pointer, :int], :void
  attach_function :glp_set_obj_coef, [:pointer, :int, :double], :void
  attach_function :glp_mip_obj_val, [:pointer], :double

  # row functions
  attach_function :glp_add_rows, [:pointer, :int], :int
  attach_function :glp_set_row_name, [:pointer, :int, :string], :void
  attach_function :glp_set_row_bnds, [:pointer, :int, :int, :double, :double], :void
  attach_function :glp_set_mat_row, [:pointer, :int, :int, :pointer, :pointer], :void
  attach_function :glp_mip_row_val, [:pointer, :int], :double

  # col functions
  attach_function :glp_add_cols, [:pointer, :int], :int
  attach_function :glp_set_col_name, [:pointer, :int, :string], :void
  attach_function :glp_set_col_bnds, [:pointer, :int, :int, :double, :double], :void
  attach_function :glp_set_mat_col, [:pointer, :int, :int, :pointer, :pointer], :void
  attach_function :glp_set_col_kind, [:pointer, :int, :int], :void
  attach_function :glp_mip_col_val, [:pointer, :int], :double

  attach_function :glp_load_matrix, [:pointer, :int, :pointer, :pointer, :pointer], :void
  attach_function :glp_simplex, [:pointer, :pointer], :int
  attach_function :glp_intopt, [:pointer, :pointer], :int
  attach_function :glp_init_iocp, [:pointer], :void
  attach_function :glp_mip_status, [:pointer], :int
  attach_function :glp_write_lp, [:pointer, :int, :string], :int
  attach_function :glp_write_mps, [:pointer, :int, :string, :string], :int
  attach_function :glp_term_out, [:int], :int
end
