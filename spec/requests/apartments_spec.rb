require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  describe "GET /index" do
    user = User.where(email: 'test@example.com').first_or_create(password: '12345678', password_confirmation: '12345678')

      user.apartments.create(
        street: "string",
        city: "string",
        state: "string",
        manager: "string",
        email: "string", 
        price: "string", 
        bedrooms: 4, 
        bathrooms: 4, 
        pets: "string",
        image: https://images.unsplash.com/photo-1567684014761-b65e2e59b9eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YXBhcnRtZW50c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60
      )

      get '/apartments'

      apartments = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(apartments.length).to eq(1)
    end
  end
end
    

