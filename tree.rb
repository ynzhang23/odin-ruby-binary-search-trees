# frozen_string_literal: true

require_relative 'node'
require 'pry-byebug'

# Creates a binary tree
class Tree
  def initialize(array)
    @array = array
    @root = build_tree(array)
  end

  # Sort and remove duplicates the array
  def cleanup_array(array)
    array.uniq.sort
  end

  # Returns the center element of the current array
  def centre_element(array)
    array[(array.length - 1) / 2]
  end

  # Returns the left half of current array
  def current_array_left(array)
    return nil if array.nil?
    # Return nil as there is no left side to an array with 2 elements
    return nil if array.length == 2
    return array if array.length == 1

    final_index = (array.length / 2) - 1
    array[0..final_index]
  end

  # Returns the right half of the current array
  def current_array_right(array)
    return nil if array.nil?
    return array if array.length == 1

    first_index = ((array.length - 1) / 2) + 1
    array[first_index..]
  end

  # Recursively create nodes across the whole tree
  def create_nodes(array)
    return nil if array.nil?
    return Node.new(array[0], nil, nil) if array.length == 1

    centre_value = centre_element(array)
    current_array_left = current_array_left(array)
    current_array_right = current_array_right(array)
    # Create node recursively for the current node's left and right
    left_node = create_nodes(current_array_left)
    right_node = create_nodes(current_array_right)
    Node.new(centre_value, left_node, right_node)
  end

  # Builds the tree
  def build_tree(input_array)
    array = cleanup_array(input_array)

    # Creating the root of the tree
    centre_value = centre_element(array)
    current_array_left = current_array_left(array)
    current_array_right = current_array_right(array)
    left_node = create_nodes(current_array_left)
    right_node = create_nodes(current_array_right)
    @root = Node.new(centre_value, left_node, right_node)
  end

  # Insert a node
  def insert(value)
    new_array = @array.push(value)
    @root = build_tree(new_array)
  end

  # Prints the binary tree
  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right_node, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right_node
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.value}"
    pretty_print(node.left_node, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left_node
  end
end

array = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
tree = Tree.new(array)
tree.pretty_print
tree.insert(420)
tree.pretty_print
