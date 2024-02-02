# IAM Group
resource "aws_iam_group" "operation_group" {
  name = "operation-group"
}

# IAM Group Policy Attachment
resource "aws_iam_group_policy_attachment" "attach_policy" {
  group      = aws_iam_group.operation_group.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

# IAM Users
resource "aws_iam_user" "user" {
  for_each = toset(["Adam", "George", "Sam"])

  name = each.value
}

# IAM Group Membership - Note that this resource doesn't support import.
resource "aws_iam_group_membership" "group_membership" {
  name = "operation-group-membership"

  users = [
    for user in aws_iam_user.user : user.name
  ]

  group = aws_iam_group.operation_group.name
}

resource "aws_instance" "academy_instance" {
  ami           = "ami-0780837dd83465d73" 
  instance_type = "t2.micro" 
}

