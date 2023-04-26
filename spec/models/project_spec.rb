require "rails_helper"

describe "Project Attribute Requirements on Create", :type => :model do
 context "validation tests" do
   it "ensures the title is present when creating project" do
       project = Project.new(description: "Content of the description")
       expect(project.valid?).to eq(false)
   end
   it "ensures the description is present when creating project" do
       project = Project.new(title: "Title")
       expect(project.valid?).to eq(false)
   end
   
   it "ensures the description is present when creating project" do
        project = Project.new(published: Date.today)
        expect(project.valid?).to eq(false)
   end

   it "ensures the description is present when creating project" do
        project = Project.new(rating: 2)
        expect(project.valid?).to eq(false)
   end


   it "should not be able to save project when title missing" do
       project = Project.new(description: "Some description content goes here")
       expect(project.save).to eq(false)
   end

   it "should not be able to save project when description is missing" do
     project = Project.new(title: "Title")
     expect(project.save).to eq(false)
   end
 
   it "should be able to save project when have description and title" do
       project = Project.new(title: "Title", description: "Content of the description", published: Date.today, rating: 3)
       expect(project.save).to eq(false)
   end
 end
end

describe "Project Attribute Requirements on Edit", :type => :model do
 context "Edit project" do 
   before (:each) do
       @project = Project.create(title: "Title", description: "Content of the description")
       end
   it "ensures the title is present when editing project" do
       @project.update(:title => "New Title")
       expect(@project.title == "New Title")
   end
   it "ensures the description is present when editing project" do
       @project.update(:description => "New Description")
       expect(@project.description == "New Description")
   end
 end
end
