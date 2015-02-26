require 'spec_helper'

describe SessionsController do
  describe "GET new" do
    it "renders the new template for unauthenticated users" do
      get :new
      expect(response).to render_template :new
    end

    it "redirects to the home page authenticated users" do
      session[:user_id] = Fabricate(:user).id
      get :new
      expect(response).to redirect_to home_path 
    end
  end

  describe "POST create" do
    context "with valid credentials" do
      it "puts signed in user in session" do
        alice = Fabricate(:user)
        post :create, email: alice.email, password: alice.password
        expect(session[:user_id]).to eq(alice.id)
      end

      it "redirect to home_path" do
        alice = Fabricate(:user)
        post :create, email: alice.email, password: alice.password
        expect(response).to redirect_to home_path
      end

      it "sets the notice" do
        alice = Fabricate(:user)
        post :create, email: alice.email, password: alice.password
        expect(flash[:notice]).not_to be_blank
      end
    end

    context "with invalid credentials" do
      it "does not put signed in user in session" do
        alice = Fabricate(:user)
        post :create, email: alice.email, password: alice.password + 'asdaf'
        expect(session[:user_id]).to be_nil
      end

      it "redirects to sign in path" do
        alice = Fabricate(:user)
        post :create, email: alice.email, password: alice.password + 'asdf'
        expect(response).to redirect_to sign_in_path
      end

      it "sets the error" do
        alice = Fabricate(:user)
        post :create, email: alice.email, password: alice.password + 'asdf'
        expect(flash[:error]).not_to be_blank
      end
    end
  end

  describe "GET Destroy" do
    it "clears the session for the user" do
      session[:user_id] = Fabricate(:user).id
      get :destroy
      expect(session[:user_id]).to be_nil
    end
    it "redirects to root_path" do
      session[:user_id] = Fabricate(:user).id
      get :destroy
      expect(response).to redirect_to root_path
    end
    it "sets the notice" do
      session[:user_id] = Fabricate(:user).id
      get :destroy
      expect(flash[:notice]).not_to be_blank
    end
  end
end


