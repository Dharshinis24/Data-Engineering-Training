#56
def calculating_order_total(price,quantity):
    return price*quantity

def calculating_discount(total,discount_percent):
    return (total * discount_percent)/100

def checking_stock(stock):
    if stock > 0:
        return "Available"
    return "Out of Stock"
