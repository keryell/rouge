# -*- coding: utf-8 -*- #
# frozen_string_literal: true

module Rouge
  module Themes
    class SYCLspec < Github
      name 'sycl.spec'
      # sycl_data_types DarkOrchid3 #9a32cd
      style Keyword::Pseudo,                  :fg => '#9a32cd', :italic => true
      # sycl_functions #00c5cd Turquoise 3
      style Name::Function::Magic,            :fg => '#00c5cd', :bold => true
      # sycl_generic_types magenta #ff00ff
      style Name::Builtin::Pseudo,            :fg => '#ff00ff', :italic => true
      # sycl_macros OliveDrab2 #b3ee3a
      style Generic::Output,                  :fg => '#b3ee3a', :bold => true
      # sycl_namespaces OrangeRed1 #ff4500
      style Generic::Heading,                 :fg => '#ff4500', :bold => true
      # sycl_opencl_keywords
      style Name::Other,                      :fg => '#ff4500', :italic => true
      # sycl_types VioletRed1 #ff3e96
      style Keyword::Reserved,                :fg => '#ff3e96', :italic => true
      # sycl_variables orange1 #ffa500
      style Name::Variable::Magic,            :fg => '#ffa500', :italic => true
      # Fix the gray comment which is not visible as YellowGreen #9acd32
      style Comment,                          :fg => '#9acd32'
      style Comment::Multiline,               :fg => '#9acd32'
      style Comment::Single,                  :fg => '#9acd32'
      # Use a clearer white background
      style Text,                             :bg => '#ffffff'

    end
  end
end
