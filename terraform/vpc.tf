resource "aws_vpc" "challenge_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "challenger_vpc"
  }
}

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.challenge_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "challenger_public_subnet"
  }
}