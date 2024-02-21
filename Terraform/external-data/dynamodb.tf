resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "Fortunes"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "fortuneID"
  

  attribute {
    name = "fortuneID"
    type = "N"
  }

}