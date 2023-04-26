require "rails_helper"

RSpec.describe ProjectsController, :type => :controller do

    describe "test web requests" do
        context "GET #index" do
            it "returns a success response" do
            get :index
            expect(response).to have_http_status(:ok)
            end
        end
        
        login_user

        context "GET #show" do
            let!(:project) { Project.create(title: "Test title", description: "Test description") }
            it "returns a success response" do
                expect(response).to have_http_status(:ok)
            end
        end
        

        context "GET #edit" do
            let!(:project) { Project.create(title: "Test title", description: "Test description") }
            it "returns a success response" do
            expect(response).to have_http_status(:ok)
            end
        end

        context "GET #new" do
            it "returns a success response" do
            get :new
            expect(response).to have_http_status(:ok)
            end
        end
    end

        describe "POST #create" do
            context "when user is logged in" do
                let(:user) { create(:user) }
                let(:project_params) { { title: "Test Title", description: "Test Description" } }

            before do
                sign_in user
            end

            it "creates a new project" do
                expect {
                    post :create, params: { project: project_params }
                }.to change(Project, :count).by(1)
            end

            it "redirects to the project show page" do
                post :create, params: { project: project_params }
                expect(response).to redirect_to(project_path(Project.last))
            end
        end
    end
end