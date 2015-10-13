#it is the same actio as in direct_order but with an ajax option
@ajax_order

    Feature: ajax_order
      
      As a robot
      i will be able to order an article by post request
      
      Scenario: Order by post-request
      Given I am on the vega-website
      When I send a post request to the orderform with data
      Then I will see this article in my productcart