# frozen_string_literal: true

require 'pry-byebug'

# Creates a node for the binary tree
class Node
  include Comparable
  attr_reader :value, :left, :right

  def initalize(value, left_node, right_node)
    @value = value
    @left_node = left_node
    @right_node = right_node
  end
end
