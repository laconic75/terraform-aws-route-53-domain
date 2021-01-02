output "public_dns_zone_id" {
  value = aws_route53_zone.public.zone_id
}

output "public_dns_name_servers" {
  value = aws_route53_zone.public.name_servers
}

output "private_dns_zone_id" {
  value = aws_route53_zone.private.zone_id
}

output "private_dns_name_servers" {
  value = aws_route53_zone.private.name_servers
}
