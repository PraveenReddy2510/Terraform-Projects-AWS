resource "aws_s3_bucket" "app_bucket" {
  bucket = "app-bucket"
}

resource "aws_db_instance" "postgresql" {
  engine         = "postgres"
  instance_class = "db.t3.micro"
  ...
}

