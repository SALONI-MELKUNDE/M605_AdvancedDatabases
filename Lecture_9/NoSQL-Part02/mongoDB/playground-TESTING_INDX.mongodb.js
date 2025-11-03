
use("mongo_demo");

db.customers.find({ name: "Alice" }) 

//db.customers.createIndex({ name: 1 }) 
//db.customers.find({ name: "Alice" })

//db.customers.getIndexes()

//db.customers.dropIndex("name_1") 

//db.customers.find({ name: "Alice" }).explain("executionStats")


//db.large_collection_new.find({email: "user500000@example.com"}).explain("executionStats")
//db.large_collection_new.createIndex({ email: 1 }) 
//db.large_collection_new.dropIndex("email_1")