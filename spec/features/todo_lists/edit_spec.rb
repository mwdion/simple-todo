require 'rails_helper'

describe "Editing todo lists" do
  let!(:todo_list){ TodoList.create(title: "Groceries", description: "Grocery List.")
}
  it "updates a todo list successfully with correct information" do
  def update_todo_list(options={})
    options[:title] ||= "My todo list"
    options[:description] ||= "This is my todo list."

    todo_list = options[:todo_list]

    visit "/todo_lists"
    within "#todo_list_#{todo_list.id}" do
      click_link "Edit"
    end

    fill_in "Title", with: options[:title]
    fill_in "Description", with: options[:description]
    click_button "Save"
  end 

    update_todo_list todo_list: todo_list, 
                     title: "New Title", 
                     description: "New Description"
    
    todo_list.reload

    expect(page).to have_content("Todo list was successfully updated")
    expect(todo_list.title).to eq("New Title")
    expect(todo_list.description).to eq("New Description")
  end

  # it "Displays an error with too short a description" do
  #   update_todo_list todo_list: todo_list, description: "hi"
  #   expect_page.to have_content("error")
  # end

end
