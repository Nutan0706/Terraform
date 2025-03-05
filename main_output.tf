provider "aws" {
  region     = "us-east-1"  # Change to your preferred region
  access_key = "YOUR_ACCESS_KEY"  # Replace with your AWS access key
  secret_key = "YOUR_SECRET_KEY"  # Replace with your AWS secret key
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with the latest Ubuntu AMI ID
  instance_type = "t2.micro"
  key_name      = "your-key"  # Replace with your SSH key name

  tags = {
    Name = "MyTerraformEC2"
  }
}

output "instance_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.my_ec2.public_ip
}
