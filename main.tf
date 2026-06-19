resource "aws_instance" "telecommunication_app" {
    count = 4
    ami = "ami-07c06c9f04a3f051f"
    instance_type = "t3.micro"
    key_name = "mine"
    security_groups = [ aws_security_group.tele_sg.name ]
    tags = {
      Name = "telecommunication_app"
    }
 
}