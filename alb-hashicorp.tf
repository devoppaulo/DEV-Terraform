module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "6.5.0"
  name = "my-alb"
  load_balancer_type = "application"
  vpc_id = "vpc-0be9ce640da730918"
  subnets = ["subnet-0d3f9940a232c9bec", "subnet-014c996fe27ec908d"]
  
}
