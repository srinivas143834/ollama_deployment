# Ollama on EKS (Terraform)

This setup provisions an EKS cluster with Terraform using AWS modules. You can deploy Ollama on top of this cluster using Kubernetes manifests.

## Requirements

- Terraform v1.5+
- AWS CLI configured
- kubectl installed
- Helm (optional)

## Usage

1. Clone this repository.
2. Run:
```bash
terraform init
terraform apply
```

3. Update your kubeconfig:
```bash
aws eks update-kubeconfig --region us-east-1 --name ollama-eks-cluster
```

4. Deploy Ollama using Kubernetes:
```bash
kubectl apply -f ollama-deployment.yaml
```

> You can expose Ollama via a LoadBalancer service or an Ingress.

## Future Improvements

- Add Karpenter or Cluster Autoscaler
- Use spot instances
- Integrate with AWS ALB Ingress Controller
- Enable GPU support for Ollama model inference