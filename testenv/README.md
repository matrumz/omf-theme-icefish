# Test Environment
This Dockerfile can be used to create a debian image with fish and Oh-My-Fish! installed.

The compose file then builds the image and starts a container, volumes the files for the icefish theme, and automatically sets icefish as the active theme.

This environment will respond to changes made in the theme's files live, making it valuable for development testing. It can also serve as a convenient, isolated, environment to trial-run the theme without needing to install on your own system.

## Usage
1. `docker-compose up`
1. `docker exec -it testenv_omf-shell_1 env fish`
1. frolic in the sandbox for as long as your heart desires
