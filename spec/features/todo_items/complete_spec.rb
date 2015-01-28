require 'rails_helper'

# describe "Complete todo items" do 
#   let!(:todo_list) {TodoList.create(title: "Grocery List", description: "Groceries")}
#   let!(:todo_item) { todo_list.todo_items.create(content: "Milk")}
#   def visit_todo_list(list)
#     visit "/todo_lists"
#     within "#todo_list_#{list.id}" do
#       click_link "List Items"
#     end
#   end

#   it "is successful when marking todo items complete" do
#     visit_todo_list(todo_list)
#     expect(todo_item.completed_at).to be_nil
#     within dom_id_for(todo_item) do
#       click_link "Mark Complete"
#     end
#     todo_item.reload
#     expect(todo_item.completed_at).to_not be_nil
#   end
# end