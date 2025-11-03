
/*

*/
use("mongo_demo");

// db.Users.renameCollection("customers",{dropTarget:true})

//db.Orders.renameCollection("orders",{dropTarget:true})

db.customers.aggregate([
    {
        $lookup: {
            from: "orders",          // The collection to join
            localField: "_id",       // The field in "customers" collection
            foreignField: "customer_id",  // The field in "orders" collection
            as: "cust_orders"        // The output array name
        }
    }])


/*
db.orders.aggregate([
    { $group: { _id: "$customer_id", totalSpent: { $sum: "$total_price" } } },
    { $sort: { totalSpent: -1 } },
    { $limit: 3 }
])

/*
db.orders.aggregate([
    { $group: { _id: null, totalRevenue: { $sum: "$total_price" } } }
])
*/

/*
db.orders.aggregate([
    { $sort: { total_price: -1 } },
    { $limit: 3 }
])
*/

/*
db.orders.aggregate([
    { $sort: { total_price: -1 } }
])
+/

/*
 db.orders.aggregate([
    { $project: { customer_id: 1, total_price: 1, _id: 0 } }
])
*/
