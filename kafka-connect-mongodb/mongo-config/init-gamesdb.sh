mongo -u dbuser -p dbpass --authenticationDatabase admin localhost:27017/gamesdb <<-EOF
    use gamesdb;

    db.source_collection.insert([
        { _id:ObjectId("dac98765432a01b23cc45b6a"), model:"PS3", game:"Knight" },
        { _id:ObjectId("dac98765432a01b23cc45b6b"), model:"PS4", game:"Knight" },
        { _id:ObjectId("dac98765432a01b23cc45b6c"), model:"PS5", game:"Knight" }
    ]);
EOF

echo "Inserted example data"
