## Option 1

Line 1 - initialize new has customer_orders
Line 3 - method call (each) on order_data array of hashes
Line 3- 21 - block execution. returns order_data array
Line 4-8 - conditional, will execute if customer_orders hash contains a key that
           matches the customer_id of the current order_data hash
  - Adds the order_fulfilled and order_value from order_data to the array which
    is the value of the key :orders in customer_data
Line 9-20 - conditional which will execute if customer_orders hash does not
            contain a key that matches the customer_id of the current order_data
            hash
  - Creates key equal to customer_id from order_data
  - Sets values for that key to hashes which contain:
    - customer_id: order_data customer_id
    - customer_name: order_data customer_name
    - orders: order_data order_fulfilled and order_value

**Won't work**

the orders: is populated with arrays instead of hashes. Doesn't match the
desired format

## Option 2

- Line 1 initialize temp_orders = {}
- Line 3 method call (each) on order_data array, assign each hash to local
  variable row
- Line 4-14 block execution
  - Set temp_orders[row[:customer_id]] to a hash

**Wont' Work**

Line 4 assigns a new hash every iteration, essentially overwriting the previous
hash assignment.

## Option 3

- Same as 1 but with correct data structures. Will work!


