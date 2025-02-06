TOOLS_DIR=utils/tutorial

carla.up:
	@xhost +
	@cd $(TOOLS_DIR) && docker compose up -d
carla.down:
	@xhost -
	@cd $(TOOLS_DIR) && docker compose down

apicarla.shell:
	@xhost +
	@docker exec -it tutorial-carla-client-1 bash
