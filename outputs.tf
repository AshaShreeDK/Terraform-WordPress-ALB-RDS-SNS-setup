output "vpc_id" {
  value = aws_vpc.task15_vpc.id
}

output "wordpress_db_endpoint" {
  value = aws_db_instance.task15_wordpress_db.address
}

output "alb_dns_name" {
  value = aws_lb.task15_alb.dns_name
}

output "sns_topic_arn" {
  value = aws_sns_topic.task15_wordpress_sns.arn
}
