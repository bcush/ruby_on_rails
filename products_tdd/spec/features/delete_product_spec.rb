require "rails_helper"

RSpec.describe "deleting a product" do
  it 'deletes a product and redirects to products page' do
    product = Product.create(name: "Product 1", description: "Product1 description", pricing: 100)
    visit "/products"
    expect(page).to have_text("Product1")
    click_button "Destroy"
    expect(page).to_not have_text("Product1")
  end
end
