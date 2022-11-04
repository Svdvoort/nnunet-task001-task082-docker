build:
	docker build -t svdvoort/nnunet_task001_task082:cuda113 .

inspect:
	dive svdvoort/nnunet_task001_task082:cuda113

run:
	docker run -it svdvoort/nnunet_task001_task082:cuda113

push:
	docker push svdvoort/nnunet_task001_task082:cuda113
