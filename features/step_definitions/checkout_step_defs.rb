Given("I access the homepage") do
  commerce_homepage.visit_homepage
end

Given("I log into my account") do
  commerce_homepage.click_sign_in_link
  commerce_sign_in_page.input_email_field
  commerce_sign_in_page.input_password_field
  commerce_sign_in_page.click_log_in_link
end

Given("I search for a product") do
  commerce_homepage.visit_homepage
  commerce_homepage.input_search_field('blouse')
  commerce_homepage.click_search_bar_button
  commerce_product_list_page.click_product('Blouse')
end

Given("I add the product to my cart") do
  commerce_product_view_page.click_add_to_cart
end

When("I proceed to checkout") do
  commerce_product_view_page.click_go_to_checkout
end

When("I confirm the order") do
  commerce_shopping_cart_summary_page.click_proceed_to_checkout_confirm_order_summary
  commerce_shopping_cart_summary_page.click_proceed_to_checkout_address
  commerce_shopping_cart_summary_page.agree_to_terms_of_service
  commerce_shopping_cart_summary_page.click_proceed_to_checkout_shipping
end

When("I select a payment option") do
  commerce_shopping_cart_summary_page.click_pay_by_bank_wire
  commerce_shopping_cart_summary_page.click_confirm_order
end

Then("I want a confirmation that my order is complete") do
  expect(commerce_shopping_cart_summary_page.get_result_of_order_message).to eq commerce_shopping_cart_summary_page.confirmation_message
end

Then("I want to be able to check which products are in my cart") do
  expect(commerce_shopping_cart_summary_page.check_product_ordered_name).to eq commerce_shopping_cart_summary_page.product_name
end

Then("I want to see the number of products in my cart") do
  expect(commerce_shopping_cart_summary_page.check_product_ordered_quantity).to eq "1 Product"
end
