from fastapi import FastAPI,HTTPException
from pydantic import BaseModel

app = FastAPI()

class Product(BaseModel):
    id:int
    name: str
    price: float

products = []

@app.get("/")
def home():
    return {"message":"FastAPI is running"}

@app.get('/products')
def get_products():
    return products

@app.post("/products")
def add_product(product:Product):
    products.append(product)
    return{
        "message":"Product added",
        "product":product
    }

@app.get("/products/{id}")
def get_product(id:int):
    for product in products:
        if product.id == id:
            return product
    raise HTTPException(status_code=404, detail="Product not found")

@app.put("/products/{id}")
def update_product(id:int,update_product:Product):
    for index,product in enumerate(products):
        if product.id == id:
            products[index] = update_product
            return update_product
    raise HTTPException(status_code=404, detail="Product not found")

@app.delete("/products/{id}")
def delete_product(id:int):
    for index,product in enumerate(products):
        if product.id == id:
            deleted  = products.pop(index)
            return{
                "message":"Product deleted",
                "product":deleted
            }
    raise HTTPException(status_code=404,detail="Product not found")