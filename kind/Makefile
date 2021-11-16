.PHONY: about
.PHONY: create-cluster install-dashboard

default: about

about:
	@echo "Usage:"
	@echo "    make create-cluster      create local kubernetes cluster"
	@echo "    make install-dashboard   install dashboard"

create-cluster:
	cd cluster && kind create cluster --config=config.yaml && ./install_ingress.sh

install-dashboard:
	cd dashboard && ./install.sh
