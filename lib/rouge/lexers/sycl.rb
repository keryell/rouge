# -*- coding: utf-8 -*- #
# frozen_string_literal: true

module Rouge
  module Lexers
    load_lexer 'cpp.rb'

    class Sycl < Cpp
      title "SYCL"
      desc "The standard SYCL C++ for heterogeneous computing from Khronos Group"

      tag 'sycl'

      def self.builtins
        @builtins ||= Set.new %w(
          buffer
        )
      end

      def self.reserved
        @reserved ||= Set.new %w(
          queue
        )
      end
    end
  end
end
