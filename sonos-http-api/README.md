## Sonos HTTP API for Hass.io

Hass.io add-on wrapping [node-sonos-http-api](https://github.com/jishi/node-sonos-http-api).

### Usage

1. Create a folder named `sonos-http-api` in the `addons` folder of your hass.io server.
2. Add the files into that folder.
3. Follow the instructions in [the documentation](https://home-assistant.io/developers/hassio/addon_tutorial/#step-2-installing-and-testing-your-add-on)

### Options

Currently, the options JSON is passed as-is to node-sonos-http-api. Please refer to [the documentation](https://github.com/jishi/node-sonos-http-api#settingsjson) for the various options. However, changing the ports is not supported. You can _try_ to change the ports, but this won't actually change the ports exposed by the Docker container.