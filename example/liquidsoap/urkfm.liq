radio_name = "urkfm2"

# Radio settings
formats_picker = fun (formats) -> formats.stereo
aac_encoder = "libfdk_aac"
harbor_http_port = 7000
prometheus_server_port = 9001
liquidsoap_log_level = 3

# SRT inputs configuration
input_list =
  [
    {name="studioA_caller1", is_autofallback=true, port=10000, srt_pass=hackme},
    {name="studioA_caller2", is_autofallback=true, port=10001, srt_pass=hackme},
    {name="liveset_caller1", is_autofallback=false, port=10004, srt_pass=hackme},
    {name="liveset_caller2", is_autofallback=false, port=10005, srt_pass=hackme},
    {name="omroepflevo", is_autofallback=true, port=10006, srt_pass=hackme}
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
  [("aac", ["dab", "urkfm"]), ("mp3", ["midfi"])]
