
use("mongo_demo");

db.customers.insertMany([
    { _id: 1, name: "Alice", age: 25, email: "alice@example.com", city: "Berlin", interests: ["reading", "traveling"] },
    { _id: 2, name: "Bob", age: 30, email: "bob@example.com", city: "London", interests: ["gaming", "music"] },
    { _id: 3, name: "Charlie", age: 35, email: "charlie@example.com", city: "Paris", interests: ["cooking", "traveling"] },
    { _id: 4, name: "Diana", age: 28, email: "diana@example.com", city: "New York", interests: ["fitness", "books"] },
    { _id: 5, name: "Ethan", age: 22, email: "ethan@example.com", city: "Toronto", interests: ["sports", "movies"] }
])

db.orders.insertMany([
    { _id: 101, customer_id: 1, total_price: 120, status: "Completed", items: ["Laptop", "Mouse"], order_date: new Date("2024-01-10") },
    { _id: 102, customer_id: 2, total_price: 250, status: "Pending", items: ["Phone", "Headphones"], order_date: new Date("2024-02-15") },
    { _id: 103, customer_id: 3, total_price: 300, status: "Completed", items: ["Monitor"], order_date: new Date("2024-03-05") },
    { _id: 104, customer_id: 4, total_price: 80, status: "Completed", items: ["Keyboard", "USB Cable"], order_date: new Date("2024-04-20") },
    { _id: 105, customer_id: 5, total_price: 150, status: "Pending", items: ["Tablet"], order_date: new Date("2024-05-02") }
])

db.orders.aggregate([

    // Stage 1: Filter completed orders
   { $match: { status: "Completed" } }, 

   // Stage 2: Group by customer and sum their total spending
   { $group: { _id: "$customer_id", totalSpent: { $sum: "$total_price" } } },  

    // Stage 3: Sort by highest spending; -1 -> DESC
   { $sort: { totalSpent: -1 } } ])

