
# 1. Read the problem statement to make sure you fully understand the problem 
# 2. Identify the base case(s) 
# 3. Determine the inductive step 
# 4. Write the function 
# 5. Run the provided test cases to verify you have a working solution

# # As we learn recursion, it is important that we break down each problem into these steps. Doing so will help us devise solutions and avoid stack overflow errors.

def sum_to(n)
  return nil if n < 0 
  return n if n == 0

  n += sum_to(n-1)
end

  p sum_to(5)  # => returns 15
  p sum_to(1)  # => returns 1
  p sum_to(9)  # => returns 45
  p sum_to(-8)  # => returns nil


# Exercise 2 - add_numbers
# Write a function add_numbers(nums_array) that takes in an array of Integers and returns the sum of those numbers. Write this method recursively.

def add_numbers(arr)
  return 0 if arr.length == 0
  arr[0] + add_numbers(arr[1..-1])
end

p add_numbers([1,2,3,4]) # => returns 10
p add_numbers([3]) # => returns 3
p add_numbers([-80,34,7]) # => returns -39
p add_numbers([]) # => returns nil << why can i only get it to return zero


# Exercise 3 - Gamma Function
# Lets write a method that will solve Gamma Function recursively. The Gamma Function is defined Γ(n) = (n-1)!.


# pgamma_fnc(0)  # => returns nil
# gamma_fnc(1)  # => returns 1
# gamma_fnc(4)  # => returns 6
# gamma_fnc(8)  # => returns 5040

#totally lost on this one .. 


# Exercise 4 - Ice Cream Shop
# Write a function ice_cream_shop(flavors, favorite) that takes in an array of ice cream flavors available at the ice cream shop, as well as the user's favorite ice cream flavor. Recursively find out whether or not the shop offers their favorite flavor.


# def ice_cream_shop(flavors, favorite)
#   return true if flavors[0] == favorite
#   return false if flavors == []
#   ice_cream_shop(flavors[1..-1], favorite)
# end
# #can't figure this one out 



# #   # Test Cases
#   ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
#   ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
#   ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
#   ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
#   ice_cream_shop([], 'honey lavender')  # => returns false



def reverse(str)
  return str if str.length <= 1
  str[-1] + reverse(str[0..-2])
end

# Exercise 5 - Reverse
# Write a function reverse(string) that takes in a string and returns it reversed.

  # Test Cases
p reverse("house") # => "esuoh"
p reverse("dog") # => "god"
p reverse("atom") # => "mota"
p reverse("q") # => "q"
p reverse("id") # => "di"
p reverse("") # => ""