#!/bin/bash
#kitty bash -c "cd ~/path/to/projects/backend/ && docker compose up && exec bash" & kitty bash -c "cd ~/path/to/projects/frontend/ && bun run dev && exec bash" & exit
ghostty --command="cd ~/path/to/projects/backend/ && docker compose up && exec bash" & ghostty --command="cd ~/path/to/projects/frontend/ && bun run dev && exec bash" & exit
