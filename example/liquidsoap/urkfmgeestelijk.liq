radio_name = "geestelijk"

# Radio settings
formats_picker = fun (formats) -> formats.stereo
aac_encoder = "libfdk_aac"
harbor_http_port = 7010
prometheus_server_port = 9011
liquidsoap_log_level = 3

# SRT inputs configuration
input_list =
  [
    {name="GML_Geestelijk", is_autofallback=true, port=10010},
    {name="Zenlex_Geestelijk", is_autofallback=true, port=10011}
  ]
livesource_state_path = "/state/#{radio_name}.livesourcestate"

# HLS output configuration
hls_segments_directory = "/tmp/#{radio_name}"
hls_segments_enable_todo_files = false
hls_state_path = "/tmp/#{radio_name}.hlsstate"
hls_segments_http_post_enable = false
hls_segments_http_post_origin = "hostname"
hls_segments_http_post_target = "http://segmentforwarder"
hls_formats = ["lofi", "midfi", "hifi"]

# ICECAST output configuration
icecast_host = "icecast"
icecast_port = 8000
icecast_password = "secret"
icecast_formats =
  [("aac", ["dab", "hoog"]), ("mp3", ["midfi"])]
