Multi-Class Planned Design Recipe


1. Describe the Problem

Typically you will be given a short statement that does this called a user story. In industry, you may also need to ask further questions to clarify aspects of the problem.

As a customer
So that I can CHECK if I want to ORDER something
I would like to see a LIST OF DISHES with prices.

As a customer
So that I can ORDER the meal I want
I would like to be able to SELECT some number of several AVAILABLE DISHES.

As a customer
So that I can VERIFY that my order is correct
I would like to SEE an itemised RECEIPT with a grand total.

DishesList
| - add(dish, price)
| - list
| - mark_unavailable
| - show_available

Order  
|- add(dish, quantity)
|- remove(dish, quantity)
|
Receipt
- list
- GrandTotal



2. Design the Class System
Design the interfaces of each of your classes and how they will work together to achieve the job of the program. You can use diagrams to visualise the relationships between classes.
Consider pulling out the key verbs and nouns in the problem description to help you figure out which classes and methods to have.
Steps 3, 4, and 5 then operate as a cycle.


...ruby

class DishesList
  def add(dish, price)
    #adds a dish and relative price
  end

  def list
    #returns the list of all dishes
  end

  def mark_unavailable(dish)
    # it marks some dishes as unavailable
  end

  def mark_available(dish)
    # it marks some dishes as available
  end

  def show_available
    #return a list of available dishes
  end
end

  class Order
    def initialize(quantity, "dish")# 1 string and 1 integer
      #it make the order of a dish and his quantity
    end

    def dish
      #it returns the dish as a string
    end

    def quantity
      #it returns the quantity as a integer
    end

    def remove(dish, quantity)
     # it removes the dishes and their quanity from the order
    end  
  end

  class receipt
    def list
      #it prints a list of all the dishes in the order
    end

    def grand_total
      # it returns the total price of the order
    end
  end


3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.
Encode one of these as a test and move to step 4.

As a customer
So that I can CHECK if I want to ORDER something
I would like to see a LIST OF DISHES with prices.

1.  




As a customer
So that I can ORDER the meal I want
I would like to be able to SELECT some number of several AVAILABLE DISHES.

2.
receipt = Receipt.new
dishes_list = DishesList.new
dishes_list.add("dish_name" : 20)
order = Order.new(2, "dish_name")
receipt = Receipt.new
expect(receipt.list).to eq (2, "dish_name")

receipt = Receipt.new
dishes_list = DishesList.new
dishes_list.add("dish_name" : 20)
order = Order.new(2, "dish")
expect{order}.to raise_error "Sorry, this dish is not available"




As a customer
So that I can VERIFY that my order is correct
I would like to SEE an itemised RECEIPT with a grand total.

3.

receipt = Receipt.new
dishes_list = DishesList.new
dishes_list.add("dish" : 20)
order = Order.new(3, "dish")
expect(receipt.list).to eq 3 "dish"
expect(receipt.grand_total).to eq 60


4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.
Encode one of these as a test and move to step 5.


class DishesList
  def add(dish, price)
  end

  def list
    #returns the list of all dishes
  end

  def mark_unavailable(dish)
    # it marks some dishes as unavailable
  end

  def mark_available(dish)
    # it marks some dishes as available
  end

  def show_available
    #return a list of available dishes
  end
end

dishes_list = DishesList.new
dishes_list.add("dish" : 20)
dishes_list.add("dish2" : 15)
expect(dishes_list.list).to eq (["dish" : 20] , ["dish2" : 15])

dishes_list = DishesList.new
expect(dishes_list.list).to eq []

dishes_list = DishesList.new
dishes_list.add("dish" : 20)
dishes_list.mark_unavailable("dish")
expect(dishes.show_available).to eq []

dishes_list = DishesList.new
dishes_list.add("dish" : 20)
dishes_list.add("dish2" : 30)
dishes_list.mark_unavailable("dish")
expect(dishes.show_available).to eq ["dish2"]

dishes_list = DishesList.new
dishes_list.add("dish" : 20)
dishes_list.add("dish2" : 30)
dishes_list.mark_unavailable("dish")
dishes_list.mark_available("dish")
expect(dishes.show_available).to eq ["dish", "dish2"]


class Order
  def initialize
  #....
  end

  def add(quantity, "dish")
  #it make the order of a dish and his quantity
  end

  def list
    #it returns the order as a string
  end

  def remove(dish, quantity)
   # it removes the dishes and their quanity from the order
  end  
end

order = Order.new
SEI QUI 

5. Implement the Behaviour
For each example you create as a test, implement the behaviour that allows the class to behave according to your example.
Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.











Jot something down
