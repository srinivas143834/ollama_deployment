output "load_balancer_dns_name" {
  value = aws_lb.ollama_alb.dns_name
}