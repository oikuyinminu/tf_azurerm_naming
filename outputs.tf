output "rg" {
    value = local.solution != "" ? format("rg-%s-%s", local.std, local.solution) : format("rg-%s", local.std)
}

output "vnet" {
    value = format("vnet-%s-%s", lookup(local.reg, var.location), lookup(local.env, replace(var.environment, "-", "")))
}

output "subnets" {
    value = {
        for x in var.subnets :
        lower(x) => format("snet-%s-%s-%s", lookup(local.reg, var.location), lookup(local.env, replace(var.environment, "-", "")), lower(x))
    }
}

output "nsg" {
    value = format("nsg-%s-%s", lookup(local.reg, var.location), lookup(local.env, replace(var.environment, "-", "")))
}

output "vm" {
    value = local.vm_name
}

output "datadisk" {
    value = "stvm-${local.vm_name}"
}

output "disk" {
    value = "stvm-${local.vm_name}"
}

output "nic" {
    value = "nic-${local.vm_name}"
}

output "pip" {
    value = local.solution != "" ? format("pip-%s-%s", local.std, local.solution) : format("pip-%s", local.std)  
}

output "pep" {
    value = local.solution != "" ? format("pep-%s-%s", local.std, local.solution) : format("pep-%s", local.std)
}

output "law" {
    value = local.solution != "" ? format("law-%s-%s", local.std, local.solution) : format("law-%s", local.std)
}

output "rsv" {
    value = local.solution != "" ? format("rsv-%s-%s", local.std, local.solution) : format("rsv-%s", local.std)  
}

output "autoacct" {
    value = local.solution != "" ? format("autoacct-%s-%s", local.std, local.solution) : format("autoacct-%s", local.std)
}

