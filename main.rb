# frozen_string_literal: true

require_relative 'node'
require_relative 'tree'
require 'pry-byebug'

array = Array.new(15) { rand(1..100) }
tree = Tree.new(array)
tree.pretty_print
p tree.balanced?
p tree.pre_order
p tree.in_order
p tree.post_order

tree.insert(rand(100..500))
tree.insert(rand(100..500))
tree.insert(rand(100..500))
tree.insert(rand(100..500))
tree.insert(rand(100..500))
tree.insert(rand(100..500))
tree.insert(rand(100..500))
tree.insert(rand(100..500))
tree.insert(rand(100..500))
tree.pretty_print
p tree.balanced?

p tree.rebalance
tree.pretty_print
p tree.balanced?
p tree.balanced?
p tree.pre_order
p tree.in_order
p tree.post_order