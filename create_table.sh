awslocal dynamodb create-table \
    --table-name EventTable \
    --attribute-definitions \
        AttributeName=PartitionKey,AttributeType=S \
        AttributeName=SortKey,AttributeType=N \
    --key-schema \
        AttributeName=PartitionKey,KeyType=HASH \
        AttributeName=SortKey,KeyType=RANGE \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5
    # --table-class STANDARD