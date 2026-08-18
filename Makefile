
compose-build:
	docker compose -f docker/compose.yaml -p alex-blake-goudemond build

compose-up:
	docker compose -f docker/compose.yaml -p alex-blake-goudemond up

compose-restart:
	docker compose -f docker/compose.yaml -p alex-blake-goudemond restart