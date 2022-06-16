#protocol = "udp"
cidr          = "192.168.1.11/32"
instance_type = "t2.small"
bucket_name   = "s3-demo-bucket-devops21"
elb_name = "my-elb"
az = ["us-west-2a","us-west-2b"]
connection_draining = true 
