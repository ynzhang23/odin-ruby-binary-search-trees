# frozen_string_literal: true

require_relative 'node'
require 'pry-byebug'

class Tree
  def initialize(array)
    @root = build_tree
  end

  def build_tree(array)
  end
end
