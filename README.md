# text-generation-infra
Kubernetes Infrastructure for text-generation-webui with Argo tools

### Text-generation-webui manifests:
- deployment and service tied to text-gen app

### Argo CD
- application.yml - ArgoCD app for monitoring and synchronising manifests of text-generation app
- workflows-app.yml - ArgoCD app for monitoring and synchronising manifests of Argo Workflows manifests

### Argo Workflows resource files:
- argo-role.yml - creates a role needed for accessing text-generation app deployment
- argo-role-binding.yml - binds forementioned role to ServiceAccount
- event-source.yml - "listens" if push events happen in DockerHub using webhook
- sensor.yml - once push event in DockerHub is detected, sensor triggers Workflow (CD pipeline)

### Workflows:
- workflow-pull-image.yml - pipeline for pulling newly pushed in DockerHub image used in deployment and rollout
