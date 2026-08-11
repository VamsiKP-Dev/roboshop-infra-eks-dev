module "sg" {
  count = length(var.sg_names)  
  source = "git::https://github.com/VamsiKP-Dev/terraform-aws-sg.git"
  project = var.project
  environment = var.environment
  vpc_id = local.vpc_id
  sg_name = replace(var.sg_names[count.index], "_", "-") 
  # sg_name = var.sg_names[count.index]
}