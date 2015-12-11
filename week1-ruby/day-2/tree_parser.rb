class Tree
  attr_accessor :children, :node_name

  def initialize(_tree = {})
    temp = []
    @node_name = _tree.keys.first
    unless _tree[@node_name].nil?
      _tree[@node_name].each do |_key, _value|
        temp.push(Tree.new(_key => _value))
      end
    end
    @children = temp
  end

  def print_node
    puts @node_name
  end

  def visit_all(&block)
    visit &block
    children.each do |c|
      c.visit_all &block
    end
  end

  def visit(&block)
    block.call self
  end
end

my_tree = Tree.new('grandpa' => { 'dad' => { 'child 1' => (), 'child 2' => () }, 'uncle' => { 'child 3' => (), 'child 4' => () } })
my_tree.visit_all { |node| puts node.node_name }
