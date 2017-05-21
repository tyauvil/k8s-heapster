#!/bin/bash
SHELL=/bin/bash
GCLOUD_PROJECT?=paperclip-crisis-123456
KUBE_DEV=gke_paperclip-crisis-123456_us-central1-b_dev-usc1b-cluster
KUBE_STG=gke_paperclip-crisis-123456_us-central1-b_stg-usc1b-cluster
KUBE_PRD=gke_paperclip-crisis-123456_us-central1-b_prd-usc1b-cluster
export

set-context:
	kubectl config set current-context gke_paperclip-crisis-123456_us-central1-b_${ENV}-usc1b-cluster

setup-env:
	kubernetes/create_service.sh

deploy: set-context setup-env

dev-deploy: ENV += dev
dev-deploy: deploy
stg-deploy: ENV += stg
stg-deploy: deploy
prd-deploy: ENV += prd
prd-deploy: deploy
