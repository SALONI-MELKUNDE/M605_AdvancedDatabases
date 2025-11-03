
use("mongo_demo");
db.createCollection("Users")
db.createCollection("Orders")

db.Users.insertOne({
    "_id": ObjectId("507f1f77bcf86cd799439011"),
    "name": "Alice",
    "email": "alice@example.com"
  })

 db.Orders.insertOne({
    "_id": ObjectId("60c72b2f9b1e8e22f8f5a8d1"),
    "user_id": ObjectId("507f1f77bcf86cd799439011"),
    "items": ["Laptop", "Mouse"],
    "total_price": 1200
  })
  



  
  

