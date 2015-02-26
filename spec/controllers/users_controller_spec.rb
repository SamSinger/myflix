require 'spec_helper'

describe UsersController do 
  describe "GET new" do
    it "sets @user" do
      get :new
      expect(assigns(:user)).to be_instance_of(User)
    end
  end

  describe "POST create" do
    context "with valid input" do
      it "creates user" do
        post :create, user: Fabricate.attributes_for(:user)
        expect(User.count).to eq(1)
      end

      it "redirects to sign in page" do
        post :create, user: Fabricate.attributes_for(:user)
        expect(response).to redirect_to sign_in_path
      end
    end

    context "With invalid input" do
      it "does not create a user" do
        post :create, user: { password: "password", full_name: "Sam Singer" } 
        expect(User.count).to eq(0)
      end

      it "renders the :new template" do
        post :create, user: { password: "password", full_name: "Sam Singer" } 
        expect(response).to render_template :new
      end

      it "sets @user" do
        post :create, user: { password: "password", full_name: "Sam Singer" } 
        expect(assigns(:user)).to be_instance_of(User)
      end
    end
  end
end