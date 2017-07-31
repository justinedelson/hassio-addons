## Sonos HTTP API for Hass.io

Hass.io add-on wrapping [node-sonos-http-api](https://github.com/jishi/node-sonos-http-api).

### Usage

1. Create a folder named `sonos-http-api` in the `addons` folder of your hass.io server.
2. Add the files into that folder.
3. Follow the instructions in [the documentation](https://home-assistant.io/developers/hassio/addon_tutorial/#step-2-installing-and-testing-your-add-on)

### Options

Currently, the options JSON is passed as-is to node-sonos-http-api. Please refer to [the documentation](https://github.com/jishi/node-sonos-http-api#settingsjson) for the various options. However, changing the ports is not supported. You can _try_ to change the ports, but this won't actually change the ports exposed by the Docker container.

### Referencing From Home Assistant

When accessing the Sonos HTTP API from Home Assistant (on the same hass.io server), you will need to use the IP address `172.17.0.1`. For example, if you wanted to have a [REST command](https://home-assistant.io/components/rest_command/) to play a specific Spotify track, the Home Assistant configuration would look like this:


    rest_command:
       play_spotify_song:
          url: "http://172.17.0.1:5005/{{ room }}/spotify/now/{{ trackId }}"
