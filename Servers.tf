data "aws_ami"  "centos" {
owners  = ["973714476881"]
most_recent = true
name_regex  = "Centos-8-DevOps-Practice"
}
output "ami" {
value= data.aws_ami.centos.image_id
    }
resource "aws_instance" "frontend" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z0347023DBSBO4AKVVAD"
  name    = "frontend-dev.ngandham.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

output "frontend"{
value =aws_instance.frontend.public_ip
}
resource "aws_instance" "catalogue" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "catalogue"
  }
}
resource "aws_route53_record" "catalogue" {
  zone_id = "Z0347023DBSBO4AKVVAD"
  name    = "catalogue-dev.ngandham.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "mongodb" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "mongodb"
  }
}
resource "aws_route53_record" "mongodb" {
  zone_id = "Z0347023DBSBO4AKVVAD"
  name    = "mongodb-dev.ngandham.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}
resource "aws_instance" "mysql" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "mysql"
  }
}
resource "aws_route53_record" "mysql" {
  zone_id = "Z0347023DBSBO4AKVVAD"
  name    = "mysql-dev.ngandham.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}
resource "aws_instance" "user" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "user"
  }
}
resource "aws_route53_record" "user" {
  zone_id = "Z0347023DBSBO4AKVVAD"
  name    = "user-dev.ngandham.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}
resource "aws_instance" "cart" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "cart"
  }
}
resource "aws_route53_record" "cart" {
  zone_id = "Z0347023DBSBO4AKVVAD"
  name    = "cart-dev.ngandham.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}
resource "aws_instance" "shipping" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "shipping"
  }
}
resource "aws_route53_record" "shipping" {
  zone_id = "Z0347023DBSBO4AKVVAD"
  name    = "shipping-dev.ngandham.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}
resource "aws_instance" "payment" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "payment"
  }
}
resource "aws_route53_record" "payment" {
  zone_id = "Z0347023DBSBO4AKVVAD"
  name    = "payment-dev.ngandham.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}
resource "aws_instance" "rabbitmq" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "rabbitmq"
  }
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z0347023DBSBO4AKVVAD"
  name    = "rabbitmq-dev.ngandham.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}
resource "aws_instance" "redis" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "redis"
  }
}
resource "aws_route53_record" "redis" {
  zone_id = "Z0347023DBSBO4AKVVAD"
  name    = "redis-dev.ngandham.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}
resource "aws_instance" "dispatch" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "dispatch"
  }
}
resource "aws_route53_record" "dispatch" {
  zone_id = "Z0347023DBSBO4AKVVAD"
  name    = "dispatch-dev.ngandham.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}