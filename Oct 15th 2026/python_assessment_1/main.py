import retail_utils
from retail_utils import checking_stock
import retail_utils as re
#58
print("Total amount: ",retail_utils.calculating_order_total(2000,2))
print("Discount amount: ",retail_utils.calculating_discount(1000,20))
print("Stock status: ",retail_utils.checking_stock(3))

#59
print("Stock status: ",checking_stock(0))

#60
print("discount amount: ",re.calculating_discount(1000,50))



