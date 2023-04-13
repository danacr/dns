# dan.cv cloudflare dns settings

This repository manages the `dan.cv` domain settings using terraform cloud.

Run:
```bash
terraform plan
git commit
git push
```

You need a `.auto.tfvars` file structured like this:
```terraform
cf_api_token = "key"
webhost_ip = "ip"
```