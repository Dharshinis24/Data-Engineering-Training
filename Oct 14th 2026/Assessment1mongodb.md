use commerce\_assessment



db.createCollection("products")



db.products.insertMany(\[

&#x20;{

&#x20;product\_id: 101,

&#x20;product\_name: "Ultra Laptop",

&#x20;category: "Electronics",

&#x20;brand: "TechPro",

&#x20;price: 72000,

&#x20;stock: 12,

&#x20;available: true,

&#x20;launch\_date: ISODate("2026-01-15"),

&#x20;colors: \["Black", "Silver"],

&#x20;specifications: {

&#x20;ram: "16 GB",

&#x20;storage: "1 TB SSD",

&#x20;warranty\_years: 2

&#x20;}

&#x20;},

&#x20;{

&#x20;product\_id: 102,

&#x20;product\_name: "Wireless Mouse",

&#x20;category: "Accessories",

&#x20;brand: "ClickMax",

&#x20;price: 1800,

&#x20;stock: 40,

&#x20;available: true,

&#x20;launch\_date: ISODate("2026-02-10"),

&#x20;colors: \["Black", "Blue", "Red"],

&#x20;specifications: {

&#x20;wireless: true,

&#x20;warranty\_years: 1

&#x20;}

&#x20;},

&#x20;{

&#x20;product\_id: 103,

&#x20;product\_name: "Office Desk",

&#x20;category: "Furniture",

&#x20;brand: "WorkSpace",

&#x20;price: 14500,

&#x20;stock: 8,

&#x20;available: true,

&#x20;launch\_date: ISODate("2025-11-20"),

&#x20;colors: \["Brown", "Black"],

&#x20;specifications: {

&#x20;material: "Wood",

&#x20;adjustable: false,

&#x20;warranty\_years: 3

&#x20;}

&#x20;},

&#x20;{

&#x20;product\_id: 104,

&#x20;product\_name: "Smart Monitor",

&#x20;category: "Electronics",

&#x20;brand: "VisionPlus",

&#x20;price: 26000,

&#x20;stock: 5,

&#x20;available: true,

&#x20;launch\_date: ISODate("2026-03-01"),

&#x20;colors: \["Black"],

&#x20;specifications: {

&#x20;screen\_size: "27 inch",

&#x20;resolution: "4K",

&#x20;warranty\_years: 2

&#x20;}

},

{

&#x20;product\_id: 105,

&#x20;product\_name: "Gaming Chair",

&#x20;category: "Furniture",

&#x20;brand: "SeatPro",

&#x20;price: 18500,

&#x20;stock: 0,

&#x20;available: false,

&#x20;launch\_date: ISODate("2026-01-05"),

&#x20;colors: \["Black", "Red"],

&#x20;specifications: {

&#x20;material: "Leather",

&#x20;adjustable: true,

&#x20;warranty\_years: 3

&#x20;}

&#x20;},

&#x20;{

&#x20;product\_id: 106,

&#x20;product\_name: "Mechanical Keyboard",

&#x20;category: "Accessories",

&#x20;brand: "KeyWorks",

&#x20;price: 5200,

&#x20;stock: 18,

&#x20;available: true,

&#x20;launch\_date: ISODate("2026-04-12"),

&#x20;colors: \["Black", "White"],

&#x20;specifications: {

&#x20;backlit: true,

&#x20;wireless: false,

&#x20;warranty\_years: 1

&#x20;}

&#x20;}

])

{

&#x20; acknowledged: true,

&#x20; insertedIds: {

&#x20;   '0': ObjectId('6acf0050825c37eb0f325e07'),

&#x20;   '1': ObjectId('6acf0050825c37eb0f325e08'),

&#x20;   '2': ObjectId('6acf0050825c37eb0f325e09'),

&#x20;   '3': ObjectId('6acf0050825c37eb0f325e0a'),

&#x20;   '4': ObjectId('6acf0050825c37eb0f325e0b'),

&#x20;   '5': ObjectId('6acf0050825c37eb0f325e0c')

&#x20; }

}





**//part 2 CRUD operations**



**//1**



db.products.find()

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e08'),

&#x20; product\_id: 102,

&#x20; product\_name: 'Wireless Mouse',

&#x20; category: 'Accessories',

&#x20; brand: 'ClickMax',

&#x20; price: 1800,

&#x20; stock: 40,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-02-10T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Blue',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   wireless: true,

&#x20;   warranty\_years: 1

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e09'),

&#x20; product\_id: 103,

&#x20; product\_name: 'Office Desk',

&#x20; category: 'Furniture',

&#x20; brand: 'WorkSpace',

&#x20; price: 14500,

&#x20; stock: 8,

&#x20; available: true,

&#x20; launch\_date: ISODate('2025-11-20T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Brown',

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Wood',

&#x20;   adjustable: false,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0a'),

&#x20; product\_id: 104,

&#x20; product\_name: 'Smart Monitor',

&#x20; category: 'Electronics',

&#x20; brand: 'VisionPlus',

&#x20; price: 26000,

&#x20; stock: 5,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-03-01T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   screen\_size: '27 inch',

&#x20;   resolution: '4K',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0b'),

&#x20; product\_id: 105,

&#x20; product\_name: 'Gaming Chair',

&#x20; category: 'Furniture',

&#x20; brand: 'SeatPro',

&#x20; price: 18500,

&#x20; stock: 0,

&#x20; available: false,

&#x20; launch\_date: ISODate('2026-01-05T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Leather',

&#x20;   adjustable: true,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0c'),

&#x20; product\_id: 106,

&#x20; product\_name: 'Mechanical Keyboard',

&#x20; category: 'Accessories',

&#x20; brand: 'KeyWorks',

&#x20; price: 5200,

&#x20; stock: 18,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-04-12T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'White'

&#x20; ],

&#x20; specifications: {

&#x20;   backlit: true,

&#x20;   wireless: false,

&#x20;   warranty\_years: 1

&#x20; }

}



**//2**



db.products.find(

&#x20; {

&#x20;   product\_id:103

&#x20; }

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e09'),

&#x20; product\_id: 103,

&#x20; product\_name: 'Office Desk',

&#x20; category: 'Furniture',

&#x20; brand: 'WorkSpace',

&#x20; price: 14500,

&#x20; stock: 8,

&#x20; available: true,

&#x20; launch\_date: ISODate('2025-11-20T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Brown',

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Wood',

&#x20;   adjustable: false,

&#x20;   warranty\_years: 3

&#x20; }

}



**//3**



db.products.insertOne(

&#x20; {

&#x20;   product\_id:107,

&#x20;   product\_name:"Bluetooth Speaker",

&#x20;   category:"Electronics",

&#x20;   brand:"SoundMax",

&#x20;   price:7500,

&#x20;   stock:20,

&#x20;   available:true

&#x20; }

)

{

&#x20; acknowledged: true,

&#x20; insertedId: ObjectId('6acf01f9825c37eb0f325e0d')

}



**//4**



db.products.insertMany(\[

&#x20; {

&#x20;   product\_id:108,

&#x20;   product\_name:"Memory card",

&#x20;   category:"Electronics",

&#x20;   brand:"SanDisk",

&#x20;   price:3000,

&#x20;   stock:10,

&#x20;   available:true

&#x20; },

&#x20; {

&#x20;   product\_id:109,

&#x20;   product\_name:"Chip",

&#x20;   category:"Electronics",

&#x20;   brand:"Sharvi Elecronics",

&#x20;   price:1000,

&#x20;   stock:5,

&#x20;   available:true

&#x20; }

])

{

&#x20; acknowledged: true,

&#x20; insertedIds: {

&#x20;   '0': ObjectId('6acf0307825c37eb0f325e0e'),

&#x20;   '1': ObjectId('6acf0307825c37eb0f325e0f')

&#x20; }

}



**//5**



db.products.updateOne(

&#x20;   {product\_id:102},

&#x20;   {$set:{price:2000}}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 1,

&#x20; modifiedCount: 1,

&#x20; upsertedCount: 0

}



**//6**



db.products.updateOne(

&#x20; {product\_id:105},

&#x20; {$set:{stock:15,available:true}}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 1,

&#x20; modifiedCount: 1,

&#x20; upsertedCount: 0

}



**//7**



db.products.updateOne(

&#x20; {product\_id:104},

&#x20; {$inc:{stock:10}}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 1,

&#x20; modifiedCount: 1,

&#x20; upsertedCount: 0

}



**//8**



db.products.updateOne(

&#x20; {product\_id:106},

&#x20; {$inc:{stock:-3}}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 1,

&#x20; modifiedCount: 1,

&#x20; upsertedCount: 0

}



**//9**



db.products.updateOne(

&#x20; {product\_id:101},

&#x20; {$set:{discount\_percent:10}}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 1,

&#x20; modifiedCount: 1,

&#x20; upsertedCount: 0

}



db.products.find({product\_id:101})

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; },

&#x20; discount\_percent: 10

}



**//10**



db.products.updateOne(

&#x20; {product\_id:101},

&#x20; {$unset:{discount\_percent:""}}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 1,

&#x20; modifiedCount: 1,

&#x20; upsertedCount: 0

}



db.products.find({product\_id:101})

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; }

}





**//11**



db.products.deleteOne(

&#x20; {product\_id:109}

)

{

&#x20; acknowledged: true,

&#x20; deletedCount: 1

}



**//12**



db.products.deleteMany(

&#x20; {stock:{$eq:0}}

)

{

&#x20; acknowledged: true,

&#x20; deletedCount: 0

}



db.products.find()

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e08'),

&#x20; product\_id: 102,

&#x20; product\_name: 'Wireless Mouse',

&#x20; category: 'Accessories',

&#x20; brand: 'ClickMax',

&#x20; price: 2000,

&#x20; stock: 40,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-02-10T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Blue',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   wireless: true,

&#x20;   warranty\_years: 1

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e09'),

&#x20; product\_id: 103,

&#x20; product\_name: 'Office Desk',

&#x20; category: 'Furniture',

&#x20; brand: 'WorkSpace',

&#x20; price: 14500,

&#x20; stock: 8,

&#x20; available: true,

&#x20; launch\_date: ISODate('2025-11-20T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Brown',

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Wood',

&#x20;   adjustable: false,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0a'),

&#x20; product\_id: 104,

&#x20; product\_name: 'Smart Monitor',

&#x20; category: 'Electronics',

&#x20; brand: 'VisionPlus',

&#x20; price: 26000,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-03-01T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   screen\_size: '27 inch',

&#x20;   resolution: '4K',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0b'),

&#x20; product\_id: 105,

&#x20; product\_name: 'Gaming Chair',

&#x20; category: 'Furniture',

&#x20; brand: 'SeatPro',

&#x20; price: 18500,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-05T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Leather',

&#x20;   adjustable: true,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0c'),

&#x20; product\_id: 106,

&#x20; product\_name: 'Mechanical Keyboard',

&#x20; category: 'Accessories',

&#x20; brand: 'KeyWorks',

&#x20; price: 5200,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-04-12T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'White'

&#x20; ],

&#x20; specifications: {

&#x20;   backlit: true,

&#x20;   wireless: false,

&#x20;   warranty\_years: 1

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf01f9825c37eb0f325e0d'),

&#x20; product\_id: 107,

&#x20; product\_name: 'Bluetooth Speaker',

&#x20; category: 'Electronics',

&#x20; brand: 'SoundMax',

&#x20; price: 7500,

&#x20; stock: 20,

&#x20; available: true

}

{

&#x20; \_id: ObjectId('6acf0307825c37eb0f325e0e'),

&#x20; product\_id: 108,

&#x20; product\_name: 'Memory card',

&#x20; category: 'Electronics',

&#x20; brand: 'SanDisk',

&#x20; price: 3000,

&#x20; stock: 10,

&#x20; available: true

}





**//Part 3 - filtering and query operators**



**//14**



db.products.find(

&#x20; {category:"Electronics"}

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0a'),

&#x20; product\_id: 104,

&#x20; product\_name: 'Smart Monitor',

&#x20; category: 'Electronics',

&#x20; brand: 'VisionPlus',

&#x20; price: 26000,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-03-01T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   screen\_size: '27 inch',

&#x20;   resolution: '4K',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf01f9825c37eb0f325e0d'),

&#x20; product\_id: 107,

&#x20; product\_name: 'Bluetooth Speaker',

&#x20; category: 'Electronics',

&#x20; brand: 'SoundMax',

&#x20; price: 7500,

&#x20; stock: 20,

&#x20; available: true

}

{

&#x20; \_id: ObjectId('6acf0307825c37eb0f325e0e'),

&#x20; product\_id: 108,

&#x20; product\_name: 'Memory card',

&#x20; category: 'Electronics',

&#x20; brand: 'SanDisk',

&#x20; price: 3000,

&#x20; stock: 10,

&#x20; available: true

}



**//15**



db.products.find(

&#x20; {price:{$gt:10000}}

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e09'),

&#x20; product\_id: 103,

&#x20; product\_name: 'Office Desk',

&#x20; category: 'Furniture',

&#x20; brand: 'WorkSpace',

&#x20; price: 14500,

&#x20; stock: 8,

&#x20; available: true,

&#x20; launch\_date: ISODate('2025-11-20T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Brown',

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Wood',

&#x20;   adjustable: false,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0a'),

&#x20; product\_id: 104,

&#x20; product\_name: 'Smart Monitor',

&#x20; category: 'Electronics',

&#x20; brand: 'VisionPlus',

&#x20; price: 26000,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-03-01T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   screen\_size: '27 inch',

&#x20;   resolution: '4K',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0b'),

&#x20; product\_id: 105,

&#x20; product\_name: 'Gaming Chair',

&#x20; category: 'Furniture',

&#x20; brand: 'SeatPro',

&#x20; price: 18500,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-05T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Leather',

&#x20;   adjustable: true,

&#x20;   warranty\_years: 3

&#x20; }

}



**//16**



db.products.find(

&#x20; {price:{$gt:5000,$lt:30000}}

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e09'),

&#x20; product\_id: 103,

&#x20; product\_name: 'Office Desk',

&#x20; category: 'Furniture',

&#x20; brand: 'WorkSpace',

&#x20; price: 14500,

&#x20; stock: 8,

&#x20; available: true,

&#x20; launch\_date: ISODate('2025-11-20T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Brown',

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Wood',

&#x20;   adjustable: false,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0a'),

&#x20; product\_id: 104,

&#x20; product\_name: 'Smart Monitor',

&#x20; category: 'Electronics',

&#x20; brand: 'VisionPlus',

&#x20; price: 26000,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-03-01T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   screen\_size: '27 inch',

&#x20;   resolution: '4K',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0b'),

&#x20; product\_id: 105,

&#x20; product\_name: 'Gaming Chair',

&#x20; category: 'Furniture',

&#x20; brand: 'SeatPro',

&#x20; price: 18500,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-05T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Leather',

&#x20;   adjustable: true,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0c'),

&#x20; product\_id: 106,

&#x20; product\_name: 'Mechanical Keyboard',

&#x20; category: 'Accessories',

&#x20; brand: 'KeyWorks',

&#x20; price: 5200,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-04-12T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'White'

&#x20; ],

&#x20; specifications: {

&#x20;   backlit: true,

&#x20;   wireless: false,

&#x20;   warranty\_years: 1

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf01f9825c37eb0f325e0d'),

&#x20; product\_id: 107,

&#x20; product\_name: 'Bluetooth Speaker',

&#x20; category: 'Electronics',

&#x20; brand: 'SoundMax',

&#x20; price: 7500,

&#x20; stock: 20,

&#x20; available: true

}



**//17**



db.products.find(

&#x20; {stock:{$lt:10}}

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e09'),

&#x20; product\_id: 103,

&#x20; product\_name: 'Office Desk',

&#x20; category: 'Furniture',

&#x20; brand: 'WorkSpace',

&#x20; price: 14500,

&#x20; stock: 8,

&#x20; available: true,

&#x20; launch\_date: ISODate('2025-11-20T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Brown',

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Wood',

&#x20;   adjustable: false,

&#x20;   warranty\_years: 3

&#x20; }

}



**//18**



db.products.find(

&#x20; {available:true}

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e08'),

&#x20; product\_id: 102,

&#x20; product\_name: 'Wireless Mouse',

&#x20; category: 'Accessories',

&#x20; brand: 'ClickMax',

&#x20; price: 2000,

&#x20; stock: 40,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-02-10T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Blue',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   wireless: true,

&#x20;   warranty\_years: 1

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e09'),

&#x20; product\_id: 103,

&#x20; product\_name: 'Office Desk',

&#x20; category: 'Furniture',

&#x20; brand: 'WorkSpace',

&#x20; price: 14500,

&#x20; stock: 8,

&#x20; available: true,

&#x20; launch\_date: ISODate('2025-11-20T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Brown',

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Wood',

&#x20;   adjustable: false,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0a'),

&#x20; product\_id: 104,

&#x20; product\_name: 'Smart Monitor',

&#x20; category: 'Electronics',

&#x20; brand: 'VisionPlus',

&#x20; price: 26000,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-03-01T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   screen\_size: '27 inch',

&#x20;   resolution: '4K',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0b'),

&#x20; product\_id: 105,

&#x20; product\_name: 'Gaming Chair',

&#x20; category: 'Furniture',

&#x20; brand: 'SeatPro',

&#x20; price: 18500,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-05T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Leather',

&#x20;   adjustable: true,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0c'),

&#x20; product\_id: 106,

&#x20; product\_name: 'Mechanical Keyboard',

&#x20; category: 'Accessories',

&#x20; brand: 'KeyWorks',

&#x20; price: 5200,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-04-12T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'White'

&#x20; ],

&#x20; specifications: {

&#x20;   backlit: true,

&#x20;   wireless: false,

&#x20;   warranty\_years: 1

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf01f9825c37eb0f325e0d'),

&#x20; product\_id: 107,

&#x20; product\_name: 'Bluetooth Speaker',

&#x20; category: 'Electronics',

&#x20; brand: 'SoundMax',

&#x20; price: 7500,

&#x20; stock: 20,

&#x20; available: true

}

{

&#x20; \_id: ObjectId('6acf0307825c37eb0f325e0e'),

&#x20; product\_id: 108,

&#x20; product\_name: 'Memory card',

&#x20; category: 'Electronics',

&#x20; brand: 'SanDisk',

&#x20; price: 3000,

&#x20; stock: 10,

&#x20; available: true

}



**//19**



db.products.find(

&#x20; {available:false}

)



**//20**



db.products.find(

&#x20; {

&#x20;   $or:\[{category:"Electronics"},{category:"Furniture"}]

&#x20; }

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e09'),

&#x20; product\_id: 103,

&#x20; product\_name: 'Office Desk',

&#x20; category: 'Furniture',

&#x20; brand: 'WorkSpace',

&#x20; price: 14500,

&#x20; stock: 8,

&#x20; available: true,

&#x20; launch\_date: ISODate('2025-11-20T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Brown',

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Wood',

&#x20;   adjustable: false,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0a'),

&#x20; product\_id: 104,

&#x20; product\_name: 'Smart Monitor',

&#x20; category: 'Electronics',

&#x20; brand: 'VisionPlus',

&#x20; price: 26000,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-03-01T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   screen\_size: '27 inch',

&#x20;   resolution: '4K',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0b'),

&#x20; product\_id: 105,

&#x20; product\_name: 'Gaming Chair',

&#x20; category: 'Furniture',

&#x20; brand: 'SeatPro',

&#x20; price: 18500,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-05T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Leather',

&#x20;   adjustable: true,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf01f9825c37eb0f325e0d'),

&#x20; product\_id: 107,

&#x20; product\_name: 'Bluetooth Speaker',

&#x20; category: 'Electronics',

&#x20; brand: 'SoundMax',

&#x20; price: 7500,

&#x20; stock: 20,

&#x20; available: true

}

{

&#x20; \_id: ObjectId('6acf0307825c37eb0f325e0e'),

&#x20; product\_id: 108,

&#x20; product\_name: 'Memory card',

&#x20; category: 'Electronics',

&#x20; brand: 'SanDisk',

&#x20; price: 3000,

&#x20; stock: 10,

&#x20; available: true

}



**//21**



db.products.find(

&#x20; {

&#x20;   category:{$ne:"Accessories"}

&#x20; }

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e09'),

&#x20; product\_id: 103,

&#x20; product\_name: 'Office Desk',

&#x20; category: 'Furniture',

&#x20; brand: 'WorkSpace',

&#x20; price: 14500,

&#x20; stock: 8,

&#x20; available: true,

&#x20; launch\_date: ISODate('2025-11-20T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Brown',

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Wood',

&#x20;   adjustable: false,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0a'),

&#x20; product\_id: 104,

&#x20; product\_name: 'Smart Monitor',

&#x20; category: 'Electronics',

&#x20; brand: 'VisionPlus',

&#x20; price: 26000,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-03-01T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   screen\_size: '27 inch',

&#x20;   resolution: '4K',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0b'),

&#x20; product\_id: 105,

&#x20; product\_name: 'Gaming Chair',

&#x20; category: 'Furniture',

&#x20; brand: 'SeatPro',

&#x20; price: 18500,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-05T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Leather',

&#x20;   adjustable: true,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf01f9825c37eb0f325e0d'),

&#x20; product\_id: 107,

&#x20; product\_name: 'Bluetooth Speaker',

&#x20; category: 'Electronics',

&#x20; brand: 'SoundMax',

&#x20; price: 7500,

&#x20; stock: 20,

&#x20; available: true

}

{

&#x20; \_id: ObjectId('6acf0307825c37eb0f325e0e'),

&#x20; product\_id: 108,

&#x20; product\_name: 'Memory card',

&#x20; category: 'Electronics',

&#x20; brand: 'SanDisk',

&#x20; price: 3000,

&#x20; stock: 10,

&#x20; available: true

}



**//22**



db.products.find(

&#x20; {

&#x20;   price:{$gt:10000},

&#x20;   stock:{$gt:5}

&#x20; }

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e09'),

&#x20; product\_id: 103,

&#x20; product\_name: 'Office Desk',

&#x20; category: 'Furniture',

&#x20; brand: 'WorkSpace',

&#x20; price: 14500,

&#x20; stock: 8,

&#x20; available: true,

&#x20; launch\_date: ISODate('2025-11-20T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Brown',

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Wood',

&#x20;   adjustable: false,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0a'),

&#x20; product\_id: 104,

&#x20; product\_name: 'Smart Monitor',

&#x20; category: 'Electronics',

&#x20; brand: 'VisionPlus',

&#x20; price: 26000,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-03-01T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   screen\_size: '27 inch',

&#x20;   resolution: '4K',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0b'),

&#x20; product\_id: 105,

&#x20; product\_name: 'Gaming Chair',

&#x20; category: 'Furniture',

&#x20; brand: 'SeatPro',

&#x20; price: 18500,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-05T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Leather',

&#x20;   adjustable: true,

&#x20;   warranty\_years: 3

&#x20; }

}



**//23**



db.products.find(

&#x20; {

&#x20;   $or:\[

&#x20;     {category:"Electronics"},

&#x20;     {price:{$lt:5000}}

&#x20;   ]

&#x20; }

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e08'),

&#x20; product\_id: 102,

&#x20; product\_name: 'Wireless Mouse',

&#x20; category: 'Accessories',

&#x20; brand: 'ClickMax',

&#x20; price: 2000,

&#x20; stock: 40,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-02-10T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Blue',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   wireless: true,

&#x20;   warranty\_years: 1

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0a'),

&#x20; product\_id: 104,

&#x20; product\_name: 'Smart Monitor',

&#x20; category: 'Electronics',

&#x20; brand: 'VisionPlus',

&#x20; price: 26000,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-03-01T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   screen\_size: '27 inch',

&#x20;   resolution: '4K',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf01f9825c37eb0f325e0d'),

&#x20; product\_id: 107,

&#x20; product\_name: 'Bluetooth Speaker',

&#x20; category: 'Electronics',

&#x20; brand: 'SoundMax',

&#x20; price: 7500,

&#x20; stock: 20,

&#x20; available: true

}

{

&#x20; \_id: ObjectId('6acf0307825c37eb0f325e0e'),

&#x20; product\_id: 108,

&#x20; product\_name: 'Memory card',

&#x20; category: 'Electronics',

&#x20; brand: 'SanDisk',

&#x20; price: 3000,

&#x20; stock: 10,

&#x20; available: true

}



**//24**



db.products.find(

&#x20; {

&#x20;   launch\_date:{$gt:ISODate('2026-02-01T00:00:00.000Z')}

&#x20; }

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e08'),

&#x20; product\_id: 102,

&#x20; product\_name: 'Wireless Mouse',

&#x20; category: 'Accessories',

&#x20; brand: 'ClickMax',

&#x20; price: 2000,

&#x20; stock: 40,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-02-10T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Blue',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   wireless: true,

&#x20;   warranty\_years: 1

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0a'),

&#x20; product\_id: 104,

&#x20; product\_name: 'Smart Monitor',

&#x20; category: 'Electronics',

&#x20; brand: 'VisionPlus',

&#x20; price: 26000,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-03-01T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   screen\_size: '27 inch',

&#x20;   resolution: '4K',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0c'),

&#x20; product\_id: 106,

&#x20; product\_name: 'Mechanical Keyboard',

&#x20; category: 'Accessories',

&#x20; brand: 'KeyWorks',

&#x20; price: 5200,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-04-12T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'White'

&#x20; ],

&#x20; specifications: {

&#x20;   backlit: true,

&#x20;   wireless: false,

&#x20;   warranty\_years: 1

&#x20; }

}



**//25**



db.products.find(

&#x20; {

&#x20;   launch\_date:{$gt:ISODate('2026-01-01T00:00:00.000Z'),

&#x20;                $lt:ISODate('2026-03-31T00:00:00.000Z')}

&#x20; }

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e08'),

&#x20; product\_id: 102,

&#x20; product\_name: 'Wireless Mouse',

&#x20; category: 'Accessories',

&#x20; brand: 'ClickMax',

&#x20; price: 2000,

&#x20; stock: 40,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-02-10T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Blue',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   wireless: true,

&#x20;   warranty\_years: 1

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0a'),

&#x20; product\_id: 104,

&#x20; product\_name: 'Smart Monitor',

&#x20; category: 'Electronics',

&#x20; brand: 'VisionPlus',

&#x20; price: 26000,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-03-01T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   screen\_size: '27 inch',

&#x20;   resolution: '4K',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0b'),

&#x20; product\_id: 105,

&#x20; product\_name: 'Gaming Chair',

&#x20; category: 'Furniture',

&#x20; brand: 'SeatPro',

&#x20; price: 18500,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-05T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Leather',

&#x20;   adjustable: true,

&#x20;   warranty\_years: 3

&#x20; }

}



**//Part 4 - Projection and Sorting**



**//26**



db.products.find(

&#x20; {},

&#x20; {product\_name:1,price:1,\_id:0}

)

{

&#x20; product\_name: 'Ultra Laptop',

&#x20; price: 72000

}

{

&#x20; product\_name: 'Wireless Mouse',

&#x20; price: 2000

}

{

&#x20; product\_name: 'Office Desk',

&#x20; price: 14500

}

{

&#x20; product\_name: 'Smart Monitor',

&#x20; price: 26000

}

{

&#x20; product\_name: 'Gaming Chair',

&#x20; price: 18500

}

{

&#x20; product\_name: 'Mechanical Keyboard',

&#x20; price: 5200

}

{

&#x20; product\_name: 'Bluetooth Speaker',

&#x20; price: 7500

}

{

&#x20; product\_name: 'Memory card',

&#x20; price: 3000

}



**//27**



db.products.find(

&#x20; {},

&#x20; {product\_name:1,category:1,stock:1,\_id:0}

)

{

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; stock: 12

}

{

&#x20; product\_name: 'Wireless Mouse',

&#x20; category: 'Accessories',

&#x20; stock: 40

}

{

&#x20; product\_name: 'Office Desk',

&#x20; category: 'Furniture',

&#x20; stock: 8

}

{

&#x20; product\_name: 'Smart Monitor',

&#x20; category: 'Electronics',

&#x20; stock: 15

}

{

&#x20; product\_name: 'Gaming Chair',

&#x20; category: 'Furniture',

&#x20; stock: 15

}

{

&#x20; product\_name: 'Mechanical Keyboard',

&#x20; category: 'Accessories',

&#x20; stock: 15

}

{

&#x20; product\_name: 'Bluetooth Speaker',

&#x20; category: 'Electronics',

&#x20; stock: 20

}

{

&#x20; product\_name: 'Memory card',

&#x20; category: 'Electronics',

&#x20; stock: 10

}



**//28**



db.products.find().sort(

&#x20; {price:1}

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e08'),

&#x20; product\_id: 102,

&#x20; product\_name: 'Wireless Mouse',

&#x20; category: 'Accessories',

&#x20; brand: 'ClickMax',

&#x20; price: 2000,

&#x20; stock: 40,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-02-10T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Blue',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   wireless: true,

&#x20;   warranty\_years: 1

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0307825c37eb0f325e0e'),

&#x20; product\_id: 108,

&#x20; product\_name: 'Memory card',

&#x20; category: 'Electronics',

&#x20; brand: 'SanDisk',

&#x20; price: 3000,

&#x20; stock: 10,

&#x20; available: true

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0c'),

&#x20; product\_id: 106,

&#x20; product\_name: 'Mechanical Keyboard',

&#x20; category: 'Accessories',

&#x20; brand: 'KeyWorks',

&#x20; price: 5200,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-04-12T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'White'

&#x20; ],

&#x20; specifications: {

&#x20;   backlit: true,

&#x20;   wireless: false,

&#x20;   warranty\_years: 1

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf01f9825c37eb0f325e0d'),

&#x20; product\_id: 107,

&#x20; product\_name: 'Bluetooth Speaker',

&#x20; category: 'Electronics',

&#x20; brand: 'SoundMax',

&#x20; price: 7500,

&#x20; stock: 20,

&#x20; available: true

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e09'),

&#x20; product\_id: 103,

&#x20; product\_name: 'Office Desk',

&#x20; category: 'Furniture',

&#x20; brand: 'WorkSpace',

&#x20; price: 14500,

&#x20; stock: 8,

&#x20; available: true,

&#x20; launch\_date: ISODate('2025-11-20T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Brown',

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Wood',

&#x20;   adjustable: false,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0b'),

&#x20; product\_id: 105,

&#x20; product\_name: 'Gaming Chair',

&#x20; category: 'Furniture',

&#x20; brand: 'SeatPro',

&#x20; price: 18500,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-05T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Leather',

&#x20;   adjustable: true,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0a'),

&#x20; product\_id: 104,

&#x20; product\_name: 'Smart Monitor',

&#x20; category: 'Electronics',

&#x20; brand: 'VisionPlus',

&#x20; price: 26000,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-03-01T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   screen\_size: '27 inch',

&#x20;   resolution: '4K',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; }

}



**//29**



db.products.find().sort(

&#x20; {price:-1}

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0a'),

&#x20; product\_id: 104,

&#x20; product\_name: 'Smart Monitor',

&#x20; category: 'Electronics',

&#x20; brand: 'VisionPlus',

&#x20; price: 26000,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-03-01T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   screen\_size: '27 inch',

&#x20;   resolution: '4K',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0b'),

&#x20; product\_id: 105,

&#x20; product\_name: 'Gaming Chair',

&#x20; category: 'Furniture',

&#x20; brand: 'SeatPro',

&#x20; price: 18500,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-05T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Leather',

&#x20;   adjustable: true,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e09'),

&#x20; product\_id: 103,

&#x20; product\_name: 'Office Desk',

&#x20; category: 'Furniture',

&#x20; brand: 'WorkSpace',

&#x20; price: 14500,

&#x20; stock: 8,

&#x20; available: true,

&#x20; launch\_date: ISODate('2025-11-20T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Brown',

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Wood',

&#x20;   adjustable: false,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf01f9825c37eb0f325e0d'),

&#x20; product\_id: 107,

&#x20; product\_name: 'Bluetooth Speaker',

&#x20; category: 'Electronics',

&#x20; brand: 'SoundMax',

&#x20; price: 7500,

&#x20; stock: 20,

&#x20; available: true

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0c'),

&#x20; product\_id: 106,

&#x20; product\_name: 'Mechanical Keyboard',

&#x20; category: 'Accessories',

&#x20; brand: 'KeyWorks',

&#x20; price: 5200,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-04-12T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'White'

&#x20; ],

&#x20; specifications: {

&#x20;   backlit: true,

&#x20;   wireless: false,

&#x20;   warranty\_years: 1

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0307825c37eb0f325e0e'),

&#x20; product\_id: 108,

&#x20; product\_name: 'Memory card',

&#x20; category: 'Electronics',

&#x20; brand: 'SanDisk',

&#x20; price: 3000,

&#x20; stock: 10,

&#x20; available: true

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e08'),

&#x20; product\_id: 102,

&#x20; product\_name: 'Wireless Mouse',

&#x20; category: 'Accessories',

&#x20; brand: 'ClickMax',

&#x20; price: 2000,

&#x20; stock: 40,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-02-10T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Blue',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   wireless: true,

&#x20;   warranty\_years: 1

&#x20; }

}



**//30**



db.products.find().sort(

&#x20; {product\_name:1}

)

{

&#x20; \_id: ObjectId('6acf01f9825c37eb0f325e0d'),

&#x20; product\_id: 107,

&#x20; product\_name: 'Bluetooth Speaker',

&#x20; category: 'Electronics',

&#x20; brand: 'SoundMax',

&#x20; price: 7500,

&#x20; stock: 20,

&#x20; available: true

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0b'),

&#x20; product\_id: 105,

&#x20; product\_name: 'Gaming Chair',

&#x20; category: 'Furniture',

&#x20; brand: 'SeatPro',

&#x20; price: 18500,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-05T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Leather',

&#x20;   adjustable: true,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0c'),

&#x20; product\_id: 106,

&#x20; product\_name: 'Mechanical Keyboard',

&#x20; category: 'Accessories',

&#x20; brand: 'KeyWorks',

&#x20; price: 5200,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-04-12T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'White'

&#x20; ],

&#x20; specifications: {

&#x20;   backlit: true,

&#x20;   wireless: false,

&#x20;   warranty\_years: 1

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0307825c37eb0f325e0e'),

&#x20; product\_id: 108,

&#x20; product\_name: 'Memory card',

&#x20; category: 'Electronics',

&#x20; brand: 'SanDisk',

&#x20; price: 3000,

&#x20; stock: 10,

&#x20; available: true

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e09'),

&#x20; product\_id: 103,

&#x20; product\_name: 'Office Desk',

&#x20; category: 'Furniture',

&#x20; brand: 'WorkSpace',

&#x20; price: 14500,

&#x20; stock: 8,

&#x20; available: true,

&#x20; launch\_date: ISODate('2025-11-20T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Brown',

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Wood',

&#x20;   adjustable: false,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0a'),

&#x20; product\_id: 104,

&#x20; product\_name: 'Smart Monitor',

&#x20; category: 'Electronics',

&#x20; brand: 'VisionPlus',

&#x20; price: 26000,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-03-01T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   screen\_size: '27 inch',

&#x20;   resolution: '4K',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e08'),

&#x20; product\_id: 102,

&#x20; product\_name: 'Wireless Mouse',

&#x20; category: 'Accessories',

&#x20; brand: 'ClickMax',

&#x20; price: 2000,

&#x20; stock: 40,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-02-10T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Blue',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   wireless: true,

&#x20;   warranty\_years: 1

&#x20; }

}



**//31**



db.products.find().sort({price:-1}).limit(3)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0a'),

&#x20; product\_id: 104,

&#x20; product\_name: 'Smart Monitor',

&#x20; category: 'Electronics',

&#x20; brand: 'VisionPlus',

&#x20; price: 26000,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-03-01T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   screen\_size: '27 inch',

&#x20;   resolution: '4K',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0b'),

&#x20; product\_id: 105,

&#x20; product\_name: 'Gaming Chair',

&#x20; category: 'Furniture',

&#x20; brand: 'SeatPro',

&#x20; price: 18500,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-05T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Leather',

&#x20;   adjustable: true,

&#x20;   warranty\_years: 3

&#x20; }

}



**//32**



db.products.find().sort({stock:1}).limit(2)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e09'),

&#x20; product\_id: 103,

&#x20; product\_name: 'Office Desk',

&#x20; category: 'Furniture',

&#x20; brand: 'WorkSpace',

&#x20; price: 14500,

&#x20; stock: 8,

&#x20; available: true,

&#x20; launch\_date: ISODate('2025-11-20T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Brown',

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Wood',

&#x20;   adjustable: false,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0307825c37eb0f325e0e'),

&#x20; product\_id: 108,

&#x20; product\_name: 'Memory card',

&#x20; category: 'Electronics',

&#x20; brand: 'SanDisk',

&#x20; price: 3000,

&#x20; stock: 10,

&#x20; available: true

}



**//Part 5 - Arrays**



**//33**



db.products.find(

&#x20; {colors:"Black"}

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e08'),

&#x20; product\_id: 102,

&#x20; product\_name: 'Wireless Mouse',

&#x20; category: 'Accessories',

&#x20; brand: 'ClickMax',

&#x20; price: 2000,

&#x20; stock: 40,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-02-10T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Blue',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   wireless: true,

&#x20;   warranty\_years: 1

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e09'),

&#x20; product\_id: 103,

&#x20; product\_name: 'Office Desk',

&#x20; category: 'Furniture',

&#x20; brand: 'WorkSpace',

&#x20; price: 14500,

&#x20; stock: 8,

&#x20; available: true,

&#x20; launch\_date: ISODate('2025-11-20T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Brown',

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Wood',

&#x20;   adjustable: false,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0a'),

&#x20; product\_id: 104,

&#x20; product\_name: 'Smart Monitor',

&#x20; category: 'Electronics',

&#x20; brand: 'VisionPlus',

&#x20; price: 26000,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-03-01T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   screen\_size: '27 inch',

&#x20;   resolution: '4K',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0b'),

&#x20; product\_id: 105,

&#x20; product\_name: 'Gaming Chair',

&#x20; category: 'Furniture',

&#x20; brand: 'SeatPro',

&#x20; price: 18500,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-05T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Leather',

&#x20;   adjustable: true,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0c'),

&#x20; product\_id: 106,

&#x20; product\_name: 'Mechanical Keyboard',

&#x20; category: 'Accessories',

&#x20; brand: 'KeyWorks',

&#x20; price: 5200,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-04-12T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'White'

&#x20; ],

&#x20; specifications: {

&#x20;   backlit: true,

&#x20;   wireless: false,

&#x20;   warranty\_years: 1

&#x20; }

}



**//34**



db.products.find(

&#x20; {

&#x20;   colors:"Black",

&#x20;   colors:"Silver"

&#x20; }

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; }

}



**//35**



db.products.find(

&#x20; {

&#x20;   colors:{$in:\["White","Blue"]}

&#x20; }

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e08'),

&#x20; product\_id: 102,

&#x20; product\_name: 'Wireless Mouse',

&#x20; category: 'Accessories',

&#x20; brand: 'ClickMax',

&#x20; price: 2000,

&#x20; stock: 40,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-02-10T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Blue',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   wireless: true,

&#x20;   warranty\_years: 1

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0c'),

&#x20; product\_id: 106,

&#x20; product\_name: 'Mechanical Keyboard',

&#x20; category: 'Accessories',

&#x20; brand: 'KeyWorks',

&#x20; price: 5200,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-04-12T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'White'

&#x20; ],

&#x20; specifications: {

&#x20;   backlit: true,

&#x20;   wireless: false,

&#x20;   warranty\_years: 1

&#x20; }

}



**//36**



db.products.updateOne(

&#x20; {product\_id:101},

&#x20; {$push:{colors:"Grey"}}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 1,

&#x20; modifiedCount: 1,

&#x20; upsertedCount: 0

}



**//37**



db.products.updateOne(

&#x20; {product\_id:101},

&#x20; {$addToSet:{colors:"Black"}}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 1,

&#x20; modifiedCount: 0,

&#x20; upsertedCount: 0

}



**//38**



db.products.updateOne(

&#x20; {product\_id:102},

&#x20; {$pull:{colors:"Red"}}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 1,

&#x20; modifiedCount: 1,

&#x20; upsertedCount: 0

}



**//39**



db.products.find({

&#x20; $expr:{$gt:\[

&#x20;   {$size:{$ifNull:\["$colors",\[]]}},1

&#x20; ]}

})

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver',

&#x20;   'Grey'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e08'),

&#x20; product\_id: 102,

&#x20; product\_name: 'Wireless Mouse',

&#x20; category: 'Accessories',

&#x20; brand: 'ClickMax',

&#x20; price: 2000,

&#x20; stock: 40,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-02-10T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Blue'

&#x20; ],

&#x20; specifications: {

&#x20;   wireless: true,

&#x20;   warranty\_years: 1

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e09'),

&#x20; product\_id: 103,

&#x20; product\_name: 'Office Desk',

&#x20; category: 'Furniture',

&#x20; brand: 'WorkSpace',

&#x20; price: 14500,

&#x20; stock: 8,

&#x20; available: true,

&#x20; launch\_date: ISODate('2025-11-20T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Brown',

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Wood',

&#x20;   adjustable: false,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0b'),

&#x20; product\_id: 105,

&#x20; product\_name: 'Gaming Chair',

&#x20; category: 'Furniture',

&#x20; brand: 'SeatPro',

&#x20; price: 18500,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-05T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Leather',

&#x20;   adjustable: true,

&#x20;   warranty\_years: 3

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0c'),

&#x20; product\_id: 106,

&#x20; product\_name: 'Mechanical Keyboard',

&#x20; category: 'Accessories',

&#x20; brand: 'KeyWorks',

&#x20; price: 5200,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-04-12T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'White'

&#x20; ],

&#x20; specifications: {

&#x20;   backlit: true,

&#x20;   wireless: false,

&#x20;   warranty\_years: 1

&#x20; }

}



**//Part 6 - Embedded Documents**



**//40**



db.products.find(

&#x20; {"specifications.warranty\_years":2}

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver',

&#x20;   'Grey'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0a'),

&#x20; product\_id: 104,

&#x20; product\_name: 'Smart Monitor',

&#x20; category: 'Electronics',

&#x20; brand: 'VisionPlus',

&#x20; price: 26000,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-03-01T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   screen\_size: '27 inch',

&#x20;   resolution: '4K',

&#x20;   warranty\_years: 2

&#x20; }

}



**//41**



db.products.find(

&#x20; {"specifications.adjustable":true}

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0b'),

&#x20; product\_id: 105,

&#x20; product\_name: 'Gaming Chair',

&#x20; category: 'Furniture',

&#x20; brand: 'SeatPro',

&#x20; price: 18500,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-05T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Leather',

&#x20;   adjustable: true,

&#x20;   warranty\_years: 3

&#x20; }

}



**//42**



db.products.find(

&#x20; {"specifications.wireless":true}

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e08'),

&#x20; product\_id: 102,

&#x20; product\_name: 'Wireless Mouse',

&#x20; category: 'Accessories',

&#x20; brand: 'ClickMax',

&#x20; price: 2000,

&#x20; stock: 40,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-02-10T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Blue'

&#x20; ],

&#x20; specifications: {

&#x20;   wireless: true,

&#x20;   warranty\_years: 1

&#x20; }

}



**//43**



db.products.updateOne(

&#x20; {product\_id:103},

&#x20; {$set:{"specifications.warranty\_years":5}}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 1,

&#x20; modifiedCount: 1,

&#x20; upsertedCount: 0

}



**//44**



db.products.updateMany(

&#x20; {product\_id:{$in:\[102,105]}},

&#x20; {$set:{"specifications.country\_of\_origin":"India"}}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 2,

&#x20; modifiedCount: 2,

&#x20; upsertedCount: 0

}



**//45**



db.products.find(

&#x20; {"specifications.country\_of\_origin":"India"

&#x20;   }

)

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e08'),

&#x20; product\_id: 102,

&#x20; product\_name: 'Wireless Mouse',

&#x20; category: 'Accessories',

&#x20; brand: 'ClickMax',

&#x20; price: 2000,

&#x20; stock: 40,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-02-10T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Blue'

&#x20; ],

&#x20; specifications: {

&#x20;   wireless: true,

&#x20;   warranty\_years: 1,

&#x20;   country\_of\_origin: 'India'

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0b'),

&#x20; product\_id: 105,

&#x20; product\_name: 'Gaming Chair',

&#x20; category: 'Furniture',

&#x20; brand: 'SeatPro',

&#x20; price: 18500,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-05T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Leather',

&#x20;   adjustable: true,

&#x20;   warranty\_years: 3,

&#x20;   country\_of\_origin: 'India'

&#x20; }

}



**//Part 7 - data Types**



**//46**



db.products.find({

&#x20; $expr:{

&#x20;   $isNumber:"$price"

&#x20; }

})

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e07'),

&#x20; product\_id: 101,

&#x20; product\_name: 'Ultra Laptop',

&#x20; category: 'Electronics',

&#x20; brand: 'TechPro',

&#x20; price: 72000,

&#x20; stock: 12,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-15T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver',

&#x20;   'Grey'

&#x20; ],

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e08'),

&#x20; product\_id: 102,

&#x20; product\_name: 'Wireless Mouse',

&#x20; category: 'Accessories',

&#x20; brand: 'ClickMax',

&#x20; price: 2000,

&#x20; stock: 40,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-02-10T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Blue'

&#x20; ],

&#x20; specifications: {

&#x20;   wireless: true,

&#x20;   warranty\_years: 1,

&#x20;   country\_of\_origin: 'India'

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e09'),

&#x20; product\_id: 103,

&#x20; product\_name: 'Office Desk',

&#x20; category: 'Furniture',

&#x20; brand: 'WorkSpace',

&#x20; price: 14500,

&#x20; stock: 8,

&#x20; available: true,

&#x20; launch\_date: ISODate('2025-11-20T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Brown',

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Wood',

&#x20;   adjustable: false,

&#x20;   warranty\_years: 5

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0a'),

&#x20; product\_id: 104,

&#x20; product\_name: 'Smart Monitor',

&#x20; category: 'Electronics',

&#x20; brand: 'VisionPlus',

&#x20; price: 26000,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-03-01T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black'

&#x20; ],

&#x20; specifications: {

&#x20;   screen\_size: '27 inch',

&#x20;   resolution: '4K',

&#x20;   warranty\_years: 2

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0b'),

&#x20; product\_id: 105,

&#x20; product\_name: 'Gaming Chair',

&#x20; category: 'Furniture',

&#x20; brand: 'SeatPro',

&#x20; price: 18500,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-01-05T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Red'

&#x20; ],

&#x20; specifications: {

&#x20;   material: 'Leather',

&#x20;   adjustable: true,

&#x20;   warranty\_years: 3,

&#x20;   country\_of\_origin: 'India'

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf0050825c37eb0f325e0c'),

&#x20; product\_id: 106,

&#x20; product\_name: 'Mechanical Keyboard',

&#x20; category: 'Accessories',

&#x20; brand: 'KeyWorks',

&#x20; price: 5200,

&#x20; stock: 15,

&#x20; available: true,

&#x20; launch\_date: ISODate('2026-04-12T00:00:00.000Z'),

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'White'

&#x20; ],

&#x20; specifications: {

&#x20;   backlit: true,

&#x20;   wireless: false,

&#x20;   warranty\_years: 1

&#x20; }

}

{

&#x20; \_id: ObjectId('6acf01f9825c37eb0f325e0d'),

&#x20; product\_id: 107,

&#x20; product\_name: 'Bluetooth Speaker',

&#x20; category: 'Electronics',

&#x20; brand: 'SoundMax',

&#x20; price: 7500,

&#x20; stock: 20,

&#x20; available: true

}

{

&#x20; \_id: ObjectId('6acf0307825c37eb0f325e0e'),

&#x20; product\_id: 108,

&#x20; product\_name: 'Memory card',

&#x20; category: 'Electronics',

&#x20; brand: 'SanDisk',

&#x20; price: 3000,

&#x20; stock: 10,

&#x20; available: true

}



**//47**



db.products.aggregate(\[

&#x20; {

&#x20;   $project:{

&#x20;   \_id:0,

&#x20;   datatype\_launch\_date:{$type:"$launch\_date"}

&#x20;   }

&#x20;   }

])

{

&#x20; datatype\_launch\_date: 'date'

}

{

&#x20; datatype\_launch\_date: 'date'

}

{

&#x20; datatype\_launch\_date: 'date'

}

{

&#x20; datatype\_launch\_date: 'date'

}

{

&#x20; datatype\_launch\_date: 'date'

}

{

&#x20; datatype\_launch\_date: 'date'

}

{

&#x20; datatype\_launch\_date: 'missing'

}

{

&#x20; datatype\_launch\_date: 'missing'

}



**//48**



db.products.aggregate(\[

&#x20; {

&#x20;   $project:{

&#x20;   \_id:0,

&#x20;   colors:1,

&#x20;   datatype\_colors:{$type:"$colors"}

&#x20;   }

&#x20;   }

])

{

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Silver',

&#x20;   'Grey'

&#x20; ],

&#x20; datatype\_colors: 'array'

}

{

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Blue'

&#x20; ],

&#x20; datatype\_colors: 'array'

}

{

&#x20; colors: \[

&#x20;   'Brown',

&#x20;   'Black'

&#x20; ],

&#x20; datatype\_colors: 'array'

}

{

&#x20; colors: \[

&#x20;   'Black'

&#x20; ],

&#x20; datatype\_colors: 'array'

}

{

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'Red'

&#x20; ],

&#x20; datatype\_colors: 'array'

}

{

&#x20; colors: \[

&#x20;   'Black',

&#x20;   'White'

&#x20; ],

&#x20; datatype\_colors: 'array'

}

{

&#x20; datatype\_colors: 'missing'

}

{

&#x20; datatype\_colors: 'missing'

}



**//49**



db.products.aggregate(\[

&#x20; {

&#x20;   $project:{

&#x20;   \_id:0,

&#x20;   specifications:1,

&#x20;   datatype\_specifications:{$type:"$specifications"}

&#x20;   }

&#x20;   }

])

{

&#x20; specifications: {

&#x20;   ram: '16 GB',

&#x20;   storage: '1 TB SSD',

&#x20;   warranty\_years: 2

&#x20; },

&#x20; datatype\_specifications: 'object'

}

{

&#x20; specifications: {

&#x20;   wireless: true,

&#x20;   warranty\_years: 1,

&#x20;   country\_of\_origin: 'India'

&#x20; },

&#x20; datatype\_specifications: 'object'

}

{

&#x20; specifications: {

&#x20;   material: 'Wood',

&#x20;   adjustable: false,

&#x20;   warranty\_years: 5

&#x20; },

&#x20; datatype\_specifications: 'object'

}

{

&#x20; specifications: {

&#x20;   screen\_size: '27 inch',

&#x20;   resolution: '4K',

&#x20;   warranty\_years: 2

&#x20; },

&#x20; datatype\_specifications: 'object'

}

{

&#x20; specifications: {

&#x20;   material: 'Leather',

&#x20;   adjustable: true,

&#x20;   warranty\_years: 3,

&#x20;   country\_of\_origin: 'India'

&#x20; },

&#x20; datatype\_specifications: 'object'

}

{

&#x20; specifications: {

&#x20;   backlit: true,

&#x20;   wireless: false,

&#x20;   warranty\_years: 1

&#x20; },

&#x20; datatype\_specifications: 'object'

}

{

&#x20; datatype\_specifications: 'missing'

}

{

&#x20; datatype\_specifications: 'missing'

}



**//50**



db.products.insertOne(

&#x20; {

&#x20;   product\_id:109,

&#x20;   product\_name:"Pen drive",

&#x20;   price:"2500"

&#x20; }

)

{

&#x20; acknowledged: true,

&#x20; insertedId: ObjectId('6acf19f5825c37eb0f325e10')

}



**//51**



db.products.find(

&#x20; {price:{$type:"string"}}

)

{

&#x20; \_id: ObjectId('6acf19f5825c37eb0f325e10'),

&#x20; product\_id: 109,

&#x20; product\_name: 'Pen drive',

&#x20; price: '2500'

}



**//52**



db.products.updateOne(

&#x20; {price:{$type:"string"}},

&#x20; {$set:{price:{$toDouble:"$price"}}}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 1,

&#x20; modifiedCount: 1,

&#x20; upsertedCount: 0

}



**//Part 8 - Customer Collection**



db.createCollection("customers")

{ ok: 1 }



db.customers.insertMany(\[

&#x20;   {

&#x20;       customer\_id: 501,

&#x20;       customer\_name: "Aditya Rao",

&#x20;       email: "aditya@email.com",

&#x20;       active: true,

&#x20;       address: {

&#x20;           city: "Hyderabad",

&#x20;           state: "Telangana",

&#x20;           pincode: "500081"

&#x20;       },

&#x20;       interests: \["Electronics", "Accessories"]

&#x20;   },

&#x20;   {

&#x20;       customer\_id: 502,

&#x20;       customer\_name: "Maya Thomas",

&#x20;       email: "maya@email.com",

&#x20;       active: true,

&#x20;       address: {

&#x20;           city: "Chennai",

&#x20;           state: "Tamil Nadu",

&#x20;           pincode: "600028"

&#x20;       },

&#x20;       interests: \["Furniture", "Home"]

&#x20;   },

&#x20;   {

&#x20;       customer\_id: 503,

&#x20;       customer\_name: "Faisal Ahmed",

&#x20;       email: "faisal@email.com",

&#x20;       active: false,

&#x20;       address: {

&#x20;           city: "Hyderabad",

&#x20;           state: "Telangana",

&#x20;           pincode: "500034"

&#x20;       },

&#x20;       interests: \["Electronics"]

&#x20;   },

&#x20;   {

&#x20;       customer\_id: 504,

&#x20;       customer\_name: "Nikita Shah",

&#x20;       email: "nikita@email.com",

&#x20;       active: true,

&#x20;       address: {

&#x20;           city: "Mumbai",

&#x20;           state: "Maharashtra",

&#x20;           pincode: "400050"

&#x20;       },

&#x20;       interests: \["Furniture", "Electronics"]

&#x20;   }

])

{

&#x20; acknowledged: true,

&#x20; insertedIds: {

&#x20;   '0': ObjectId('6acf1bbf825c37eb0f325e11'),

&#x20;   '1': ObjectId('6acf1bbf825c37eb0f325e12'),

&#x20;   '2': ObjectId('6acf1bbf825c37eb0f325e13'),

&#x20;   '3': ObjectId('6acf1bbf825c37eb0f325e14')

&#x20; }

}



**//53**



db.customers.find()

{

&#x20; \_id: ObjectId('6acf1bbf825c37eb0f325e11'),

&#x20; customer\_id: 501,

&#x20; customer\_name: 'Aditya Rao',

&#x20; email: 'aditya@email.com',

&#x20; active: true,

&#x20; address: {

&#x20;   city: 'Hyderabad',

&#x20;   state: 'Telangana',

&#x20;   pincode: '500081'

&#x20; },

&#x20; interests: \[

&#x20;   'Electronics',

&#x20;   'Accessories'

&#x20; ]

}

{

&#x20; \_id: ObjectId('6acf1bbf825c37eb0f325e12'),

&#x20; customer\_id: 502,

&#x20; customer\_name: 'Maya Thomas',

&#x20; email: 'maya@email.com',

&#x20; active: true,

&#x20; address: {

&#x20;   city: 'Chennai',

&#x20;   state: 'Tamil Nadu',

&#x20;   pincode: '600028'

&#x20; },

&#x20; interests: \[

&#x20;   'Furniture',

&#x20;   'Home'

&#x20; ]

}

{

&#x20; \_id: ObjectId('6acf1bbf825c37eb0f325e13'),

&#x20; customer\_id: 503,

&#x20; customer\_name: 'Faisal Ahmed',

&#x20; email: 'faisal@email.com',

&#x20; active: false,

&#x20; address: {

&#x20;   city: 'Hyderabad',

&#x20;   state: 'Telangana',

&#x20;   pincode: '500034'

&#x20; },

&#x20; interests: \[

&#x20;   'Electronics'

&#x20; ]

}

{

&#x20; \_id: ObjectId('6acf1bbf825c37eb0f325e14'),

&#x20; customer\_id: 504,

&#x20; customer\_name: 'Nikita Shah',

&#x20; email: 'nikita@email.com',

&#x20; active: true,

&#x20; address: {

&#x20;   city: 'Mumbai',

&#x20;   state: 'Maharashtra',

&#x20;   pincode: '400050'

&#x20; },

&#x20; interests: \[

&#x20;   'Furniture',

&#x20;   'Electronics'

&#x20; ]

}



**//54**



db.customers.find(

&#x20; {active:true}

)

{

&#x20; \_id: ObjectId('6acf1bbf825c37eb0f325e11'),

&#x20; customer\_id: 501,

&#x20; customer\_name: 'Aditya Rao',

&#x20; email: 'aditya@email.com',

&#x20; active: true,

&#x20; address: {

&#x20;   city: 'Hyderabad',

&#x20;   state: 'Telangana',

&#x20;   pincode: '500081'

&#x20; },

&#x20; interests: \[

&#x20;   'Electronics',

&#x20;   'Accessories'

&#x20; ]

}

{

&#x20; \_id: ObjectId('6acf1bbf825c37eb0f325e12'),

&#x20; customer\_id: 502,

&#x20; customer\_name: 'Maya Thomas',

&#x20; email: 'maya@email.com',

&#x20; active: true,

&#x20; address: {

&#x20;   city: 'Chennai',

&#x20;   state: 'Tamil Nadu',

&#x20;   pincode: '600028'

&#x20; },

&#x20; interests: \[

&#x20;   'Furniture',

&#x20;   'Home'

&#x20; ]

}

{

&#x20; \_id: ObjectId('6acf1bbf825c37eb0f325e14'),

&#x20; customer\_id: 504,

&#x20; customer\_name: 'Nikita Shah',

&#x20; email: 'nikita@email.com',

&#x20; active: true,

&#x20; address: {

&#x20;   city: 'Mumbai',

&#x20;   state: 'Maharashtra',

&#x20;   pincode: '400050'

&#x20; },

&#x20; interests: \[

&#x20;   'Furniture',

&#x20;   'Electronics'

&#x20; ]

}



**//55**



db.customers.find(

&#x20; {city:"Hyderabad"}

)

//55

db.customers.find(

&#x20; {"address.city":"Hyderabad"}

)

{

&#x20; \_id: ObjectId('6acf1bbf825c37eb0f325e11'),

&#x20; customer\_id: 501,

&#x20; customer\_name: 'Aditya Rao',

&#x20; email: 'aditya@email.com',

&#x20; active: true,

&#x20; address: {

&#x20;   city: 'Hyderabad',

&#x20;   state: 'Telangana',

&#x20;   pincode: '500081'

&#x20; },

&#x20; interests: \[

&#x20;   'Electronics',

&#x20;   'Accessories'

&#x20; ]

}

{

&#x20; \_id: ObjectId('6acf1bbf825c37eb0f325e13'),

&#x20; customer\_id: 503,

&#x20; customer\_name: 'Faisal Ahmed',

&#x20; email: 'faisal@email.com',

&#x20; active: false,

&#x20; address: {

&#x20;   city: 'Hyderabad',

&#x20;   state: 'Telangana',

&#x20;   pincode: '500034'

&#x20; },

&#x20; interests: \[

&#x20;   'Electronics'

&#x20; ]

}



**//56**



db.customers.find(

&#x20; {interests:"Electronics"}

)

{

&#x20; \_id: ObjectId('6acf1bbf825c37eb0f325e11'),

&#x20; customer\_id: 501,

&#x20; customer\_name: 'Aditya Rao',

&#x20; email: 'aditya@email.com',

&#x20; active: true,

&#x20; address: {

&#x20;   city: 'Hyderabad',

&#x20;   state: 'Telangana',

&#x20;   pincode: '500081'

&#x20; },

&#x20; interests: \[

&#x20;   'Electronics',

&#x20;   'Accessories'

&#x20; ]

}

{

&#x20; \_id: ObjectId('6acf1bbf825c37eb0f325e13'),

&#x20; customer\_id: 503,

&#x20; customer\_name: 'Faisal Ahmed',

&#x20; email: 'faisal@email.com',

&#x20; active: false,

&#x20; address: {

&#x20;   city: 'Hyderabad',

&#x20;   state: 'Telangana',

&#x20;   pincode: '500034'

&#x20; },

&#x20; interests: \[

&#x20;   'Electronics'

&#x20; ]

}

{

&#x20; \_id: ObjectId('6acf1bbf825c37eb0f325e14'),

&#x20; customer\_id: 504,

&#x20; customer\_name: 'Nikita Shah',

&#x20; email: 'nikita@email.com',

&#x20; active: true,

&#x20; address: {

&#x20;   city: 'Mumbai',

&#x20;   state: 'Maharashtra',

&#x20;   pincode: '400050'

&#x20; },

&#x20; interests: \[

&#x20;   'Furniture',

&#x20;   'Electronics'

&#x20; ]

}



**//57**



db.customers.find(

&#x20; {

&#x20;   interests:{

&#x20;     $all:\["Furniture","Electronics"]

&#x20;   }

&#x20; }

)

{

&#x20; \_id: ObjectId('6acf1bbf825c37eb0f325e14'),

&#x20; customer\_id: 504,

&#x20; customer\_name: 'Nikita Shah',

&#x20; email: 'nikita@email.com',

&#x20; active: true,

&#x20; address: {

&#x20;   city: 'Mumbai',

&#x20;   state: 'Maharashtra',

&#x20;   pincode: '400050'

&#x20; },

&#x20; interests: \[

&#x20;   'Furniture',

&#x20;   'Electronics'

&#x20; ]

}



**//58**



db.customers.updateOne(

&#x20; {customer\_id:503},

&#x20; {$set:{active:true}}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 1,

&#x20; modifiedCount: 1,

&#x20; upsertedCount: 0

}



**//59**



db.customers.updateOne(

&#x20; {customer\_id:504},

&#x20; {$set:{city:"Pune"}}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 1,

&#x20; modifiedCount: 1,

&#x20; upsertedCount: 0

}



**//60**



db.customers.updateOne(

&#x20; {customer\_id:502},

&#x20; {$push:{interests:"Garden"}}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 1,

&#x20; modifiedCount: 1,

&#x20; upsertedCount: 0

}





**//Part 9 - Array of Embedded Documents**



db.createCollection("orders")

{ ok: 1 }



db.orders.insertMany(\[

&#x20;   {

&#x20;       order\_id: 9001,

&#x20;       customer\_id: 501,

&#x20;       order\_date: ISODate("2026-09-01"),

&#x20;       status: "Delivered",

&#x20;       items: \[

&#x20;           {

&#x20;               product: "Ultra Laptop",

&#x20;               quantity: 1,

&#x20;               price: 72000

&#x20;           },

&#x20;           {

&#x20;               product: "Wireless Mouse",

&#x20;               quantity: 2,

&#x20;               price: 2000

&#x20;           }

&#x20;       ]

&#x20;   },

&#x20;   {

&#x20;       order\_id: 9002,

&#x20;       customer\_id: 502,

&#x20;       order\_date: ISODate("2026-09-03"),

&#x20;       status: "Processing",

&#x20;       items: \[

&#x20;           {

&#x20;               product: "Office Desk",

&#x20;               quantity: 1,

&#x20;               price: 14500

&#x20;           }

&#x20;       ]

&#x20;   },

&#x20;   {

&#x20;       order\_id: 9003,

&#x20;       customer\_id: 503,

&#x20;       order\_date: ISODate("2026-09-05"),

&#x20;       status: "Delivered",

&#x20;       items: \[

&#x20;           {

&#x20;               product: "Smart Monitor",

&#x20;               quantity: 2,

&#x20;               price: 26000

&#x20;           },

&#x20;           {

&#x20;               product: "Mechanical Keyboard",

&#x20;               quantity: 1,

&#x20;               price: 5200

&#x20;           }

&#x20;       ]

&#x20;   }

])

{

&#x20; acknowledged: true,

&#x20; insertedIds: {

&#x20;   '0': ObjectId('6acf1ff6825c37eb0f325e15'),

&#x20;   '1': ObjectId('6acf1ff6825c37eb0f325e16'),

&#x20;   '2': ObjectId('6acf1ff6825c37eb0f325e17')

&#x20; }

}



**//61**



db.orders.find(

&#x20; {status:"Delivered"}

)

{

&#x20; \_id: ObjectId('6acf1ff6825c37eb0f325e15'),

&#x20; order\_id: 9001,

&#x20; customer\_id: 501,

&#x20; order\_date: ISODate('2026-09-01T00:00:00.000Z'),

&#x20; status: 'Delivered',

&#x20; items: \[

&#x20;   {

&#x20;     product: 'Ultra Laptop',

&#x20;     quantity: 1,

&#x20;     price: 72000

&#x20;   },

&#x20;   {

&#x20;     product: 'Wireless Mouse',

&#x20;     quantity: 2,

&#x20;     price: 2000

&#x20;   }

&#x20; ]

}

{

&#x20; \_id: ObjectId('6acf1ff6825c37eb0f325e17'),

&#x20; order\_id: 9003,

&#x20; customer\_id: 503,

&#x20; order\_date: ISODate('2026-09-05T00:00:00.000Z'),

&#x20; status: 'Delivered',

&#x20; items: \[

&#x20;   {

&#x20;     product: 'Smart Monitor',

&#x20;     quantity: 2,

&#x20;     price: 26000

&#x20;   },

&#x20;   {

&#x20;     product: 'Mechanical Keyboard',

&#x20;     quantity: 1,

&#x20;     price: 5200

&#x20;   }

&#x20; ]

}



**//62**



db.orders.find(

&#x20; {

&#x20;   "items.product":"Ultra Laptop"

&#x20; }

)

{

&#x20; \_id: ObjectId('6acf1ff6825c37eb0f325e15'),

&#x20; order\_id: 9001,

&#x20; customer\_id: 501,

&#x20; order\_date: ISODate('2026-09-01T00:00:00.000Z'),

&#x20; status: 'Delivered',

&#x20; items: \[

&#x20;   {

&#x20;     product: 'Ultra Laptop',

&#x20;     quantity: 1,

&#x20;     price: 72000

&#x20;   },

&#x20;   {

&#x20;     product: 'Wireless Mouse',

&#x20;     quantity: 2,

&#x20;     price: 2000

&#x20;   }

&#x20; ]

}



**//63**



db.orders.find(

&#x20; {

&#x20;   "items.quantity":{$gt:1}

&#x20; }

)

{

&#x20; \_id: ObjectId('6acf1ff6825c37eb0f325e15'),

&#x20; order\_id: 9001,

&#x20; customer\_id: 501,

&#x20; order\_date: ISODate('2026-09-01T00:00:00.000Z'),

&#x20; status: 'Delivered',

&#x20; items: \[

&#x20;   {

&#x20;     product: 'Ultra Laptop',

&#x20;     quantity: 1,

&#x20;     price: 72000

&#x20;   },

&#x20;   {

&#x20;     product: 'Wireless Mouse',

&#x20;     quantity: 2,

&#x20;     price: 2000

&#x20;   }

&#x20; ]

}

{

&#x20; \_id: ObjectId('6acf1ff6825c37eb0f325e17'),

&#x20; order\_id: 9003,

&#x20; customer\_id: 503,

&#x20; order\_date: ISODate('2026-09-05T00:00:00.000Z'),

&#x20; status: 'Delivered',

&#x20; items: \[

&#x20;   {

&#x20;     product: 'Smart Monitor',

&#x20;     quantity: 2,

&#x20;     price: 26000

&#x20;   },

&#x20;   {

&#x20;     product: 'Mechanical Keyboard',

&#x20;     quantity: 1,

&#x20;     price: 5200

&#x20;   }

&#x20; ]

}



**//64**



db.orders.find(

&#x20; {

&#x20;   "items.product": "Smart Monitor",

&#x20;   "items.quantity":2

&#x20; }

)

{

&#x20; \_id: ObjectId('6acf1ff6825c37eb0f325e17'),

&#x20; order\_id: 9003,

&#x20; customer\_id: 503,

&#x20; order\_date: ISODate('2026-09-05T00:00:00.000Z'),

&#x20; status: 'Delivered',

&#x20; items: \[

&#x20;   {

&#x20;     product: 'Smart Monitor',

&#x20;     quantity: 2,

&#x20;     price: 26000

&#x20;   },

&#x20;   {

&#x20;     product: 'Mechanical Keyboard',

&#x20;     quantity: 1,

&#x20;     price: 5200

&#x20;   }

&#x20; ]

}



**//65**



db.orders.updateOne(

&#x20; {order\_id:9002},

&#x20; {$push:{items:

&#x20; {

&#x20;   product:"Mouse",

&#x20;   quantity:4,

&#x20;   price:1432

&#x20; }

&#x20;   }}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 1,

&#x20; modifiedCount: 1,

&#x20; upsertedCount: 0

}



**//66**



db.orders.updateOne(

&#x20; {order\_id:9002},

&#x20; {$set:{status:"Delivered"}}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 1,

&#x20; modifiedCount: 1,

&#x20; upsertedCount: 0

}



**//67**



db.orders.updateOne(

&#x20; {order\_id:9003},

&#x20; {$pop:{items:1}}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 1,

&#x20; modifiedCount: 1,

&#x20; upsertedCount: 0

}

db.orders.find({order\_id:9003})

{

&#x20; \_id: ObjectId('6acf1ff6825c37eb0f325e17'),

&#x20; order\_id: 9003,

&#x20; customer\_id: 503,

&#x20; order\_date: ISODate('2026-09-05T00:00:00.000Z'),

&#x20; status: 'Delivered',

&#x20; items: \[

&#x20;   {

&#x20;     product: 'Smart Monitor',

&#x20;     quantity: 2,

&#x20;     price: 26000

&#x20;   }

&#x20; ]

}



**//Part 10 - Document design**



**//68**



**Answer: Array**

**Reason:** One product can have multiple colors



{

&#x20;  product\_id: 101,

&#x20;  product\_name: "Pen",

&#x20;  category: "Stationary",

&#x20;  colors: \["Black", "Blue", "Green", "Red", "Orange"]

}



**//69**



**Answer: Embedded Documents**

**Reason:** Stored related data inside the same documents. All the address documents belongs to a the same customer



{

&#x20;  customer\_id: 501,

&#x20;  customer\_name: "Dharshini",

&#x20;  email: "dharshinis369@gmail.com",

&#x20;  active: true,

&#x20;  address: {

&#x09;city: "Erode",

&#x09;state: "Tamil Nadu",

&#x09;pincode: "638115"

&#x20;  }

}



**//70**



**Answer: Array of Embedded Documents**

**Reason:** One can order many products in a single order itself. 

&#x09;Array is used to store all the products and

&#x09;Embedded Documents is used to store all the data related to the product



{

&#x20;    order\_id: 9003,

&#x20;    customer\_id: 503,

&#x20;    order\_date: ISODate("2026-09-05"),

&#x20;    status: "Delivered",

&#x20;    items: \[

&#x20;        {

&#x20;           product: "Smart Monitor",

&#x20;           quantity: 2,

&#x20;           price: 26000

&#x20;        },

&#x20;        {

&#x20;           product: "Mechanical Keyboard",

&#x20;           quantity: 1,

&#x20;           price: 5200

&#x20;        }

&#x20;     ]

&#x20;}





**//71**



**Answer: Embedded Documents**

**Reason:** The fields like RAM, storage and processor will be grouped together as a specifications 

&#x09;related to that product.

{

&#x20;    product\_id: 101,

&#x20;    product\_name: "Laptop",

&#x20;    brand: "Acer",

&#x20;    price: 37820,

&#x20;    specifications:{

&#x20;    	RAM: "8GB DDR5 RAM",

&#x20;    	storage: "256GB NVMe SSD",

&#x20;    	processor: "AMD Ryzen 3 7320U"

&#x20;    }

}

&#x20;    



**//72**



**Answer: Separate Collection / Reference**

**Reason:** One customer have thousands of orders

&#x09;Store the data related to the customer in a separate collection and

&#x09;refer that customer\_id in all order



customer

{

&#x20;  customer\_id: 501,

&#x20;  customer\_name: "Dharshini",

&#x20;  email: "dharshinis369@gamil.com",

&#x20;  active: true,

&#x20;  address: {

&#x09;city: "Erode",

&#x09;state: "Tamil Nadu",

&#x09;pincode: "638115"

&#x20;  }

}



orders

&#x20;{

&#x20;   order\_id: 9001,

&#x20;   customer\_id: 501,

&#x20;   order\_date: ISODate("2026-09-01"),

&#x20;   status: "Delivered",

&#x20;   items: \[

&#x20;      {

&#x20;         product: "Ultra Laptop",

&#x20;         quantity: 1,

&#x20;         price: 72000

&#x20;      },

&#x20;      {

&#x20;         product: "Wireless Mouse",

&#x20;         quantity: 2,

&#x20;         price: 2000

&#x20;       }

&#x20;      ]

&#x20; },

&#x20; {

&#x20;    order\_id: 9002,

&#x20;    customer\_id: 501,

&#x20;    order\_date: ISODate("2026-09-03"),

&#x20;    status: "Processing",

&#x20;    items: \[

&#x20;       {

&#x20;          product: "Office Desk",

&#x20;          quantity: 1,

&#x20;          price: 14500

&#x20;       }

&#x20;      ]

&#x20; },

&#x20; {

&#x20;    order\_id: 9003,

&#x20;    customer\_id: 501,

&#x20;    order\_date: ISODate("2026-09-05"),

&#x20;    status: "Delivered",

&#x20;    items: \[

&#x20;      {

&#x20;         product: "Smart Monitor",

&#x20;         quantity: 2,

&#x20;         price: 26000

&#x20;      },

&#x20;      {

&#x20;         product: "Mechanical Keyboard",

&#x20;         quantity: 1,

&#x20;         price: 5200

&#x20;       }

&#x20;       ]

&#x20;}





**//73**



**Answer: Separate collection / reference**

**Reason:** Million reviews of one product will be difficult to store along with product

&#x09;storing the collection separately and refer the id's in the review collection is the 	best approach. Because product data is shared across multiple entities.

{

&#x20;    product\_id: 101,

&#x20;    product\_name: "Laptop",

&#x20;    brand: "Acer",

&#x20;    price: 37820,

&#x20;    RAM: "8GB DDR5 RAM",

&#x20;    storage: "256GB NVMe SSD",

&#x20;    processor: "AMD Ryzen 3 7320U"

}

reviews

{

&#x20;    product\_id: 101

&#x20;    customer\_id: 101,

&#x20;    rating: 4.7,

&#x20;    review: "The product is good."

},

{

&#x20;    customer\_id:102,

&#x20;    rating: 2.5,

&#x20;    review: "The laptop is getting headed soon."

},

{

&#x20;    customer\_id:106,

&#x20;    rating: 4.1,

&#x20;    review: "Too Expensive."

}

&#x20;    



**//74**



**Answer: Simple Field**

**Reason:** Simple field in a employee documents like firstname and lastname



{

&#x20;   emp\_id:1000,

&#x20;   first\_name: "Dharshini",

&#x20;   last\_name: "Sakthivel",

&#x20;   department: "Development",

&#x20;   salary: 35000

}



**//75**



**Answer: Array** 

**Reason:** A product will have multiple tags a collections that says the features of the product



{

&#x20;   product\_id: 234,

&#x20;   product\_name: "Water Bottle",

&#x20;   brand: "Milton",

&#x20;   price: 599,

&#x20;   tags: \["Stainless Steel Bottle", "Double Wall Vacuum", "Food Grade Steel", "Hot and Cold Bottle"]

&#x20;   quantity: "500ml",

&#x20;   stock: 10

}



**//Final challenge**



db.createCollection("suppliers")

{ ok: 1 }



db.suppliers.insertMany(\[

&#x20; {

&#x20;   supplier\_id: 101,

&#x20;   supplier\_name: "ABC Traders",

&#x20;   city: "Chennai",

&#x20;   active: true,

&#x20;   product\_categories: \["Electronics", "Accessories"],

&#x20;   contact: {

&#x20;     phone: "9876543210",

&#x20;     email: "abc@gmail.com"

&#x20;   },

&#x20;   warehouses: \["Chennai", "Coimbatore"],

&#x20;   registration\_date: ISODate("2024-01-15")

&#x20; },

&#x20; {

&#x20;   supplier\_id: 102,

&#x20;   supplier\_name: "Sri Stores",

&#x20;   city: "Erode",

&#x20;   active: true,

&#x20;   product\_categories: \["Furniture", "Home Appliances"],

&#x20;   contact: {

&#x20;     phone: "9876543211",

&#x20;     email: "sristores@gmail.com"

&#x20;   },

&#x20;   warehouses: \["Erode", "Salem"],

&#x20;   registration\_date: ISODate("2023-06-20")

&#x20; },

&#x20; {

&#x20;   supplier\_id: 103,

&#x20;   supplier\_name: "Tech World",

&#x20;   city: "Bengaluru",

&#x20;   active: true,

&#x20;   product\_categories: \["Electronics", "Computers"],

&#x20;   contact: {

&#x20;     phone: "9876543212",

&#x20;     email: "techworld@gmail.com"

&#x20;   },

&#x20;   warehouses: \["Bengaluru", "Chennai"],

&#x20;   registration\_date: ISODate("2022-11-10")

&#x20; },

&#x20; {

&#x20;   supplier\_id: 104,

&#x20;   supplier\_name: "Green Mart",

&#x20;   city: "Coimbatore",

&#x20;   active: false,

&#x20;   product\_categories: \["Groceries", "Beverages"],

&#x20;   contact: {

&#x20;     phone: "9876543213",

&#x20;     email: "greenmart@gmail.com"

&#x20;   },

&#x20;   warehouses: \["Coimbatore", "Erode"],

&#x20;   registration\_date: ISODate("2024-03-05")

&#x20; },

&#x20; {

&#x20;   supplier\_id: 106,

&#x20;   supplier\_name: "Royal Supplies",

&#x20;   city: "Madurai",

&#x20;   active: true,

&#x20;   product\_categories: \["Stationery", "Office Supplies"],

&#x20;   contact: {

&#x20;     phone: "9876543215",

&#x20;     email: "royalsupplies@gmail.com"

&#x20;   },

&#x20;   warehouses: \["Madurai", "Trichy"],

&#x20;   registration\_date: ISODate("2026-02-18")

&#x20; }

])

{

&#x20; acknowledged: true,

&#x20; insertedIds: {

&#x20;   '0': ObjectId('6acf4924825c37eb0f325e18'),

&#x20;   '1': ObjectId('6acf4924825c37eb0f325e19'),

&#x20;   '2': ObjectId('6acf4924825c37eb0f325e1a'),

&#x20;   '3': ObjectId('6acf4924825c37eb0f325e1b'),

&#x20;   '4': ObjectId('6acf4924825c37eb0f325e1c')

&#x20; }

}



**//76**



db.suppliers.find(

&#x20; {active:true}

)

{

&#x20; \_id: ObjectId('6acf4924825c37eb0f325e18'),

&#x20; supplier\_id: 101,

&#x20; supplier\_name: 'ABC Traders',

&#x20; city: 'Chennai',

&#x20; active: true,

&#x20; product\_categories: \[

&#x20;   'Electronics',

&#x20;   'Accessories'

&#x20; ],

&#x20; contact: {

&#x20;   phone: '9876543210',

&#x20;   email: 'abc@gmail.com'

&#x20; },

&#x20; warehouses: \[

&#x20;   'Chennai',

&#x20;   'Coimbatore'

&#x20; ],

&#x20; registration\_date: ISODate('2024-01-15T00:00:00.000Z')

}

{

&#x20; \_id: ObjectId('6acf4924825c37eb0f325e19'),

&#x20; supplier\_id: 102,

&#x20; supplier\_name: 'Sri Stores',

&#x20; city: 'Erode',

&#x20; active: true,

&#x20; product\_categories: \[

&#x20;   'Furniture',

&#x20;   'Home Appliances'

&#x20; ],

&#x20; contact: {

&#x20;   phone: '9876543211',

&#x20;   email: 'sristores@gmail.com'

&#x20; },

&#x20; warehouses: \[

&#x20;   'Erode',

&#x20;   'Salem'

&#x20; ],

&#x20; registration\_date: ISODate('2023-06-20T00:00:00.000Z')

}

{

&#x20; \_id: ObjectId('6acf4924825c37eb0f325e1a'),

&#x20; supplier\_id: 103,

&#x20; supplier\_name: 'Tech World',

&#x20; city: 'Bengaluru',

&#x20; active: true,

&#x20; product\_categories: \[

&#x20;   'Electronics',

&#x20;   'Computers'

&#x20; ],

&#x20; contact: {

&#x20;   phone: '9876543212',

&#x20;   email: 'techworld@gmail.com'

&#x20; },

&#x20; warehouses: \[

&#x20;   'Bengaluru',

&#x20;   'Chennai'

&#x20; ],

&#x20; registration\_date: ISODate('2022-11-10T00:00:00.000Z')

}

{

&#x20; \_id: ObjectId('6acf4924825c37eb0f325e1c'),

&#x20; supplier\_id: 106,

&#x20; supplier\_name: 'Royal Supplies',

&#x20; city: 'Madurai',

&#x20; active: true,

&#x20; product\_categories: \[

&#x09;'Stationery', 

&#x09;'Office Supplies'

&#x20; ],

&#x20; contact: {

&#x20;   phone: '9876543215',

&#x20;   email: 'royalsupplies@gmail.com'

&#x20; },

&#x20; warehouses: \[

&#x09;'Madurai', 

&#x09;'Trichy'

&#x20; ],

&#x20; registration\_date: ISODate("2026-02-18T00:00:00.000Z")

}



**//77**



db.suppliers.find(

&#x20; {city:"Madurai"}

)

{

&#x20; \_id: ObjectId('6acf4924825c37eb0f325e1c'),

&#x20; supplier\_id: 105,

&#x20; supplier\_name: 'Fashion Hub',

&#x20; city: 'Madurai',

&#x20; active: true,

&#x20; product\_categories: \[

&#x20;   'Clothing',

&#x20;   'Accessories'

&#x20; ],

&#x20; contact: {

&#x20;   phone: '9876543214',

&#x20;   email: 'fashionhub@gmail.com'

&#x20; },

&#x20; warehouses: \[

&#x20;   'Salem',

&#x20;   'Chennai'

&#x20; ],

&#x20; registration\_date: ISODate('2023-09-12T00:00:00.000Z')

}



**//78**



db.suppliers.find(

&#x20; {

&#x20;   product\_categories:"Electronics"

&#x20; }

)

{

&#x20; \_id: ObjectId('6acf4924825c37eb0f325e18'),

&#x20; supplier\_id: 101,

&#x20; supplier\_name: 'ABC Traders',

&#x20; city: 'Chennai',

&#x20; active: true,

&#x20; product\_categories: \[

&#x20;   'Electronics',

&#x20;   'Accessories'

&#x20; ],

&#x20; contact: {

&#x20;   phone: '9876543210',

&#x20;   email: 'abc@gmail.com'

&#x20; },

&#x20; warehouses: \[

&#x20;   'Chennai',

&#x20;   'Coimbatore'

&#x20; ],

&#x20; registration\_date: ISODate('2024-01-15T00:00:00.000Z')

}

{

&#x20; \_id: ObjectId('6acf4924825c37eb0f325e1a'),

&#x20; supplier\_id: 103,

&#x20; supplier\_name: 'Tech World',

&#x20; city: 'Bengaluru',

&#x20; active: true,

&#x20; product\_categories: \[

&#x20;   'Electronics',

&#x20;   'Computers'

&#x20; ],

&#x20; contact: {

&#x20;   phone: '9876543212',

&#x20;   email: 'techworld@gmail.com'

&#x20; },

&#x20; warehouses: \[

&#x20;   'Bengaluru',

&#x20;   'Chennai'

&#x20; ],

&#x20; registration\_date: ISODate('2022-11-10T00:00:00.000Z')

}



**//79**



db.suppliers.find(

&#x20; {

&#x20;   registration\_date:{$gt:ISODate('2026-01-01T00:00:00.000Z')}

&#x20; }

)

{

&#x20; \_id: ObjectId('6acf4ad0825c37eb0f325e1d'),

&#x20; supplier\_id: 106,

&#x20; supplier\_name: 'Royal Supplies',

&#x20; city: 'Madurai',

&#x20; active: true,

&#x20; product\_categories: \[

&#x20;   'Stationery',

&#x20;   'Office Supplies'

&#x20; ],

&#x20; contact: {

&#x20;   phone: '9876543215',

&#x20;   email: 'royalsupplies@gmail.com'

&#x20; },

&#x20; warehouses: \[

&#x20;   'Madurai',

&#x20;   'Trichy'

&#x20; ],

&#x20; registration\_date: ISODate('2026-02-18T00:00:00.000Z')

}



**//80**



db.suppliers.updateOne(

&#x20; {supplier\_id:101},

&#x20; {$push:{warehouses:"Erode"}}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 1,

&#x20; modifiedCount: 1,

&#x20; upsertedCount: 0

}



**//81**



db.suppliers.updateOne(

&#x20; {supplier\_id:101},

&#x20; {$set:{active:false}}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 1,

&#x20; modifiedCount: 1,

&#x20; upsertedCount: 0

}

db.suppliers.find({supplier\_id:101})

{

&#x20; \_id: ObjectId('6acf4924825c37eb0f325e18'),

&#x20; supplier\_id: 101,

&#x20; supplier\_name: 'ABC Traders',

&#x20; city: 'Chennai',

&#x20; active: false,

&#x20; product\_categories: \[

&#x20;   'Electronics',

&#x20;   'Accessories'

&#x20; ],

&#x20; contact: {

&#x20;   phone: '9876543210',

&#x20;   email: 'abc@gmail.com'

&#x20; },

&#x20; warehouses: \[

&#x20;   'Chennai',

&#x20;   'Coimbatore',

&#x20;   'Erode'

&#x20; ],

&#x20; registration\_date: ISODate('2024-01-15T00:00:00.000Z')

}



**//82**



db.suppliers.updateOne(

&#x20; {supplier\_id:101},

&#x20; {$pull:{product\_categories:"Electronics"}}

)

{

&#x20; acknowledged: true,

&#x20; insertedId: null,

&#x20; matchedCount: 1,

&#x20; modifiedCount: 1,

&#x20; upsertedCount: 0

}



**//83**



db.suppliers.find(

&#x20; {},

&#x20; {\_id:0,supplier\_name:1,city:1}

)

{

&#x20; supplier\_name: 'ABC Traders',

&#x20; city: 'Chennai'

}

{

&#x20; supplier\_name: 'Sri Stores',

&#x20; city: 'Erode'

}

{

&#x20; supplier\_name: 'Tech World',

&#x20; city: 'Bengaluru'

}

{

&#x20; supplier\_name: 'Green Mart',

&#x20; city: 'Coimbatore'

}

{

&#x20; supplier\_name: 'Fashion Hub',

&#x20; city: 'Salem'

}

{

&#x20; supplier\_name: 'Royal Supplies',

&#x20; city: 'Madurai'

}



**//84**



db.suppliers.find().sort({registration\_date:1})

{

&#x20; \_id: ObjectId('6acf4924825c37eb0f325e1a'),

&#x20; supplier\_id: 103,

&#x20; supplier\_name: 'Tech World',

&#x20; city: 'Bengaluru',

&#x20; active: true,

&#x20; product\_categories: \[

&#x20;   'Electronics',

&#x20;   'Computers'

&#x20; ],

&#x20; contact: {

&#x20;   phone: '9876543212',

&#x20;   email: 'techworld@gmail.com'

&#x20; },

&#x20; warehouses: \[

&#x20;   'Bengaluru',

&#x20;   'Chennai'

&#x20; ],

&#x20; registration\_date: ISODate('2022-11-10T00:00:00.000Z')

}

{

&#x20; \_id: ObjectId('6acf4924825c37eb0f325e19'),

&#x20; supplier\_id: 102,

&#x20; supplier\_name: 'Sri Stores',

&#x20; city: 'Erode',

&#x20; active: true,

&#x20; product\_categories: \[

&#x20;   'Furniture',

&#x20;   'Home Appliances'

&#x20; ],

&#x20; contact: {

&#x20;   phone: '9876543211',

&#x20;   email: 'sristores@gmail.com'

&#x20; },

&#x20; warehouses: \[

&#x20;   'Erode',

&#x20;   'Salem'

&#x20; ],

&#x20; registration\_date: ISODate('2023-06-20T00:00:00.000Z')

}

{

&#x20; \_id: ObjectId('6acf4924825c37eb0f325e18'),

&#x20; supplier\_id: 101,

&#x20; supplier\_name: 'ABC Traders',

&#x20; city: 'Chennai',

&#x20; active: false,

&#x20; product\_categories: \[

&#x20;   'Accessories'

&#x20; ],

&#x20; contact: {

&#x20;   phone: '9876543210',

&#x20;   email: 'abc@gmail.com'

&#x20; },

&#x20; warehouses: \[

&#x20;   'Chennai',

&#x20;   'Coimbatore',

&#x20;   'Erode'

&#x20; ],

&#x20; registration\_date: ISODate('2024-01-15T00:00:00.000Z')

}

{

&#x20; \_id: ObjectId('6acf4924825c37eb0f325e1b'),

&#x20; supplier\_id: 104,

&#x20; supplier\_name: 'Green Mart',

&#x20; city: 'Coimbatore',

&#x20; active: false,

&#x20; product\_categories: \[

&#x20;   'Groceries',

&#x20;   'Beverages'

&#x20; ],

&#x20; contact: {

&#x20;   phone: '9876543213',

&#x20;   email: 'greenmart@gmail.com'

&#x20; },

&#x20; warehouses: \[

&#x20;   'Coimbatore',

&#x20;   'Erode'

&#x20; ],

&#x20; registration\_date: ISODate('2024-03-05T00:00:00.000Z')

}

{

&#x20; \_id: ObjectId('6acf4924825c37eb0f325e1c'),

&#x20; supplier\_id: 105,

&#x20; supplier\_name: 'Royal Supplies',

&#x20; city: 'Madurai',

&#x20; active: true,

&#x20; product\_categories: \[

&#x20;   'Stationery',

&#x20;   'Office Supplies'

&#x20; ],

&#x20; contact: {

&#x20;   phone: '9876543215',

&#x20;   email: 'royalsupplies@gmail.com'

&#x20; },

&#x20; warehouses: \[

&#x20;   'Madurai',

&#x20;   'Trichy'

&#x20; ],

&#x20; registration\_date: ISODate('2026-02-18T00:00:00.000Z')

}





**//85**



**1.Array for category:** A supplier can supply multiple product categories. so array was used to store all categories in a single field

**2.Embedded document for contact details:** The contact info belongs to the same supplier. They are related to the supplier.

**3.Array for warehouse locations:** A supplier can have multiple warehouses. so array was used to store all the warehouse locations in a single field.





