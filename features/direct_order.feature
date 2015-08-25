#a sample how to interact with ajax
@direct_order

Feature: direct_order
    
    As a customer
    i will be able to order a product by direct ordering
    
    Scenario: Order by form
      Given I am on the vega-website
      When I use the form for direct ordering
      Then I should see a box which tells me, that I added my article
      And I will see this article in my productcart

