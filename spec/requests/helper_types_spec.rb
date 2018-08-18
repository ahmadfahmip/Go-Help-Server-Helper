require 'rails_helper'

RSpec.describe "HelperTypes API", type: :request do
  let!(:helper_types) { create_list(:helper_type, 10) }
  let(:helper_type_id) { helper_types.first.id }

  describe "GET /get_helper_types" do
    before { get '/get_helper_types' }

    it "returns helper_types" do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it "returns status code 200" do
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /get_helper_type" do
    let(:valid_attributes) { { id: 1 } }

    before { post "/get_helper_type", params: valid_attributes }

    # context "when the record exists" do
    #   it "returns the helper_type" do
    #     expect(json).not_to be_empty
    #     expect(json['id']).to eq(helper_type_id)
    #   end
    #
    #   it "returns status code 200" do
    #     expect(response).to have_http_status(200)
    #   end
    # end

    context "when the record does not exist" do
      let(:helper_type_id) { 100 }

      it "returns status code 404" do
        expect(response).to have_http_status(404)
      end
    end
  end

  describe "POST /create_helper_type" do
    let(:attributes) { { name: 'Polisi' } }

    context "when the request is valid" do
      before { post "/create_helper_type", params: attributes }

      it "returns status code 200" do
        expect(response).to have_http_status(200)
      end
    end

    context "when the response is invalid" do
      before { post "/create_helper_type", params: {} }

      it "returns status code 422" do
        expect(response).to have_http_status(422)
      end
    end
  end
end