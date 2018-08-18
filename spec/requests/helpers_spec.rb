# require 'rails_helper'
#
# RSpec.describe "Helpers API", type: :request do
#   let!(:helper_type) { create(:helper_type) }
#   let(:helper_type_id) { helper_type.id }
#   let!(:helpers) { create_list(:helper, 10) }
#   let(:helper_id) { helpers.first.id }
#
#   describe "GET /get_helpers" do
#     before { get "/helper" }
#
#     it "returns helpers" do
#       expect(json).not_to be_empty
#       expect(json.size).to eq(10)
#     end
#
#     it "returns status code 200" do
#       expect(response).to have_http_status(200)
#     end
#   end
#
#   describe "POST /get_helper" do
#     let(:valid_attributes) { { id: 1 } }
#
#     before { post "/get_helper", params: valid_attributes }
#
#     context "when the record exists" do
#       it "returns the helpers" do
#         expect(json).not_to be_empty
#         expect(json['id']).to eq(helper_id)
#       end
#
#       it "returns status code 200" do
#         expect(response).to have_http_status(200)
#       end
#     end
#
#     context "when the record does not exist" do
#       let(:helper_id) { 100 }
#
#       it "returns status code 404" do
#         expect(response).to have_http_status(404)
#       end
#     end
#   end
# end