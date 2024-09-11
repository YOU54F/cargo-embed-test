require 'ffi'

module MyLibrary
  extend FFI::Library
  ffi_lib 'target/release/libpact_ffi.dylib'

  attach_function :add, %i[size_t size_t], :size_t
  attach_function :pactffi_version, [], :string
end

result = MyLibrary.add(2, 2)
puts "Result: #{result}" 
puts "Pact_ffi version: #{MyLibrary.pactffi_version}" 
