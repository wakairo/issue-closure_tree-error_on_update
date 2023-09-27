require "test_helper"

class NodesEditTest < ActionDispatch::IntegrationTest

  test "Created node" do
    node = Node.create!
    assert node.valid?
    assert_not node.update(parent_id: node.id)
  end

  test "Fixture node" do
    node = nodes(:one)
    assert node.valid?
    assert_not node.update(parent_id: node.id)
  end
end
