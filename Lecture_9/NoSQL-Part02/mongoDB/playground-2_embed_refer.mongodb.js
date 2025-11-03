
use("mongo_demo")

db.createCollection("embedding")

db.getCollectionNames()

db.embedding.insertOne({
    "_id": ObjectId("507f1f77bcf86cd799439011"),
    "name": "Alice",
    "email": "alice@example.com",
    "address": {
      "street": "123 Main St",
      "city": "Berlin",
      "zip": "10115"
    }
  })

  db.embedding.find()

