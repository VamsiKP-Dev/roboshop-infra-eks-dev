How to truly understand Terraform instead of copying it

A helpful way to study is to ask the same four questions for every resource:

What AWS resource is this creating?
Here: an Auto Scaling Group.
Why do I need this resource?
To automatically maintain the desired number of healthy EC2 instances and replace failed ones.
What are the required settings?
For an ASG: launch template, subnets, minimum/maximum/desired capacity, and optionally a target group.
What happens in AWS after terraform apply?
Visualize the actual infrastructure being created and how the services interact.

If you build this habit, Terraform code becomes much easier to read because you're thinking in terms of AWS architecture first and Terraform syntax second.