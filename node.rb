# frozen_string_literal: true

require 'pry-byebug'

# Creates a node for the binary tree
class Node
  attr_reader :value, :left_node, :right_node

  def initialize(value, left_node = nil, right_node = nil)
    @value = value
    @left_node = left_node
    @right_node = right_node
  end
end
