
use("mongo_demo");

const docs = [];
for (let i = 0; i < 1000000; i++) {
    docs.push({
        user_id: i,
        name: "User_" + i,
        email: "user" + i + "@example.com",
        age: Math.floor(Math.random() * 60) + 18,
        created_at: new Date()
    });

    if (docs.length === 10000) { // Insert in batches
        db.large_collection_new.insertMany(docs);
        docs.length = 0;
    }
}

// Insert remaining documents
if (docs.length > 0) {
    db.large_collection_new.insertMany(docs);
}




/*Mongo Shell(mongosh) code
const bulk = db.large_collection.initializeUnorderedBulkOp();
for (let i = 0; i < 1000000; i++) {
    bulk.insert({
        user_id: i,
        name: "User_" + i,
        email: "user" + i + "@example.com",
        age: Math.floor(Math.random() * 60) + 18, // Random age between 18 and 77
        created_at: new Date()
    });
}
bulk.execute();
*/