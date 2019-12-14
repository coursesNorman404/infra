wget -O terraform.zip https://releases.hashicorp.com/terraform/0.12.18/terraform_0.12.18_linux_amd64.zip
unzip terraform.zip
export TF_VAR_image_id=$(curl -X GET -H 'Content-Type: application/json' -H "Authorization: Bearer $DIGITALOCEAN_TOKEN" "https://api.digitalocean.com/v2/images?private=true" | jq ."images[] | select(.name == \"tec-prod-norman404/app:17\") | .id")
echo $TF_VAR_image_id
cd terraform && ./terraform apply && cd ..

