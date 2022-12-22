# frozen_string_literal: true

require 'pry-byebug'

# Creates a node for the binary tree
class Node
  include Comparable
  attr_reader :value, :left, :right

  def initalize
    @value = nil
    @left = nil
    @right = nil
  end
end
