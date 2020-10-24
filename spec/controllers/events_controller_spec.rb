require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  let(:user) { FactoryBot.create(:user) }
  let(:event) { FactoryBot.create(:event, user: user) }

  let(:valid_attributes) do
    {
      title: 'Event valid attributes',
      address: 'Event address street',
      datetime: Date.new(2017, 10, 1),
      user: user
    }
  end

  let(:invalid_attributes) { {address: nil, datetime: nil} }

  let(:valid_session) { {} }

  context 'Anonymous user' do
    describe "GET #index" do
      it "returns a success response" do
        get :index, params: {}, session: valid_session
        expect(response).to be_success
      end
    end

    describe "GET #show" do
      it "returns a success response" do
        get :show, params: {id: event.to_param}, session: valid_session
        expect(response).to be_success
      end
    end

    describe "GET #new" do
      it "returns a success response" do
        get :new, params: {}, session: valid_session
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    describe "GET #edit" do
      it "returns a success response" do
        get :edit, params: {id: event.to_param}, session: valid_session
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    describe "POST #create" do
      it "no created Event" do
        expect {
          post :create, params: {event: valid_attributes}, session: valid_session
        }.to change(Event, :count).by(0)
      end

      it "returns a success response" do
        post :create, params: {event: valid_attributes}, session: valid_session
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    describe "PUT #update" do
      let(:new_attributes) { { title: 'New title', address: 'new address street' } }

      it "No updates the requested event" do
        put :update, params: {id: event.to_param, event: new_attributes}, session: valid_session
        event.reload
        expect(event.title).not_to eq(new_attributes[:title])
        expect(event.address).not_to eq(new_attributes[:address])
      end

      it "redirects to login path" do
        put :update, params: {id: event.to_param, event: valid_attributes}, session: valid_session
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    describe "DELETE #destroy" do
      it "No destroys the requested event" do
        event
        expect {
          delete :destroy, params: {id: event.to_param}, session: valid_session
        }.to change(Event, :count).by(0)
      end

      it "redirects to login path" do
        delete :destroy, params: {id: event.to_param}, session: valid_session
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  context 'Authorized User' do
    before(:each) { sign_in user }

    describe "GET #new" do
      it "returns a success response" do
        get :new, params: {}, session: valid_session
        expect(response).to be_success
      end
    end

    describe "GET #edit" do
      it "returns a success response" do
        get :edit, params: {id: event.to_param}, session: valid_session
        expect(response).to be_success
      end
    end

    describe "POST #create" do
      context "with valid params" do
        it "creates a new Event" do
          expect {
            post :create, params: {event: valid_attributes}, session: valid_session
          }.to change(Event, :count).by(1)
        end

        it "redirects to the created event" do
          post :create, params: {event: valid_attributes}, session: valid_session
          expect(response).to redirect_to(Event.last)
        end
      end

      context "with invalid params" do
        it "returns a success response (i.e. to display the 'new' template)" do
          post :create, params: {event: invalid_attributes}, session: valid_session
          expect(response).to be_success
        end
      end
    end

    describe "PUT #update" do
      context "with valid params" do
        let(:new_attributes) { { title: 'New title', address: 'new address street' } }

        it "updates the requested event" do
          put :update, params: {id: event.to_param, event: new_attributes}, session: valid_session
          event.reload
          expect(event.title).to eq(new_attributes[:title])
          expect(event.address).to eq(new_attributes[:address])
        end

        it "redirects to the event" do
          put :update, params: {id: event.to_param, event: valid_attributes}, session: valid_session
          expect(response).to redirect_to(event)
        end
      end

      context "with invalid params" do
        it "returns a success response (i.e. to display the 'edit' template)" do
          put :update, params: {id: event.to_param, event: invalid_attributes}, session: valid_session
          expect(response).to be_success
        end
      end
    end

    describe "DELETE #destroy" do
      it "destroys the requested event" do
        event
        expect {
          delete :destroy, params: {id: event.to_param}, session: valid_session
        }.to change(Event, :count).by(-1)
      end

      it "redirects to the events list" do
        delete :destroy, params: {id: event.to_param}, session: valid_session
        expect(response).to redirect_to(events_url)
      end
    end
  end
end
