     #Simple sample of cucumbertest how to interact with website-elements
     @search
   Feature: Search
     
     As a customer,
     i will be able to search for a product
     
     Scenario: Search for teller
       Given I am on the vega-website
       When I search for "Teller"
       Then I should see "Teller flach Vienna"
  

