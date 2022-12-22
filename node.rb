# frozen_string_literal: true

require 'pry-byebug'

# Creates a node for the binary tree
class Node
  include Comparable
  attr_reader :value, :left_node, :right_node

  def initalize
    @value = nil
    @left_node = nil
    @right_node = nil
  end
end
