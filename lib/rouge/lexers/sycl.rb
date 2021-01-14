# -*- coding: utf-8 -*- #
# frozen_string_literal: true

module Rouge
  module Lexers
    load_lexer 'cpp.rb'

    class Sycl < Cpp
      title "SYCL"
      desc "The standard SYCL C++ for heterogeneous computing from Khronos Group"

      tag 'sycl'
    end
  end
end
