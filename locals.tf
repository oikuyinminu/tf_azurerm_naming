locals {

  reg = {
    eastus  = "eus1"
    eastus2 = "eus2"
  }

  env = {
    "production" : "prd"
    "preproduction" : "ppd"
    "development" : "dev"
    "test" : "tst"
  }


  # Generate names for the resources
  prj = lower(substr(var.project, 0, 3))
  solution = lower(substr(var.solution, 0, 3))
  std = format("%s-%s-%s", lookup(local.reg, var.location), lookup(local.env, replace(var.environment, "-", "")), local.prj)
  vm_name = local.solution != "" ? format("vm%s%s%s%s", lookup(local.reg, var.location), lookup(local.env, replace(var.environment, "-", "")), local.prj, local.solution) : format("vm%s%s%s", lookup(local.reg, var.location), lookup(local.env, replace(var.environment, "-", "")), local.prj)

}
