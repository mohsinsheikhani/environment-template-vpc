aws proton create-environment-template \
    --name simple-vpc-tf \
    --display-name "Simple VPC Terraform Template" \
    --description "Basic VPC environment using Terraform" \
    --region us-east-1

aws proton delete-environment-template --name simple-vpc-tf

aws proton create-template-sync-config \
    --template-name simple-vpc-tf \
    --template-type ENVIRONMENT \
    --subdirectory environment-templates/vpc-env \
    --repository-provider GITHUB \
    --repository-name mohsinsheikhani/environment-template-vpc \
    --branch main \
    --region us-east-1

aws proton delete-template-sync-config \
    --template-name simple-vpc-tf \
    --template-type ENVIRONMENT \
    --region us-east-1

aws proton list-environment-template-versions \
  --template-name simple-vpc-tf \
  --region us-east-1

aws proton get-template-sync-config \
  --template-name simple-vpc-tf \
  --template-type ENVIRONMENT