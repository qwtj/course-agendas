# I. Introduction to FFmpeg

## Understanding FFmpeg's Purpose and Capabilities

### Defining FFmpeg
*   What is FFmpeg? (A comprehensive, cross-platform solution to record, convert and stream audio and video.)
*   FFmpeg's core components: `ffmpeg`, `ffprobe`, `ffplay`.

### FFmpeg Use Cases
*   Video and audio conversion.
*   Video editing (trimming, concatenating, etc.).
*   Live streaming.
*   Screen recording.
*   Analyzing multimedia files.

## Installing FFmpeg

### System Requirements
*   Operating system compatibility (Windows, macOS, Linux).

### Installation Methods
*   Windows: Download pre-built binaries.  Configure environment variables.
*   macOS: Using package managers like Homebrew (`brew install ffmpeg`).
*   Linux: Using package managers like `apt install ffmpeg` (Debian/Ubuntu) or `yum install ffmpeg` (CentOS/RHEL).

### Verifying Installation
*   Running `ffmpeg -version` in the command line to confirm successful installation and display version information.

# II. FFmpeg Basics: Commands and Syntax

## Basic FFmpeg Command Structure

### Understanding Command Components
*   `ffmpeg` (the main executable).
*   Input files (`-i input.mp4`).
*   Output file (`output.avi`).
*   Options (e.g., `-c:v libx264`, `-b:v 1000k`).

### Essential Options
*   `-i`: Input file specification.
*   `-c:v`: Video codec selection.
*   `-c:a`: Audio codec selection.
*   `-b:v`: Video bitrate.
*   `-b:a`: Audio bitrate.
*   `-r`: Frame rate.
*   `-s`: Resolution.
*   `-ss`: Start time offset.
*   `-t`: Duration.

## Converting Files

### Converting Video Formats
*   Example: Converting an MP4 file to AVI using `ffmpeg -i input.mp4 output.avi`.
*   Specifying video and audio codecs: `ffmpeg -i input.mp4 -c:v libx264 -c:a aac output.mp4`.

### Converting Audio Formats
*   Example: Converting a WAV file to MP3 using `ffmpeg -i input.wav output.mp3`.
*   Specifying audio bitrate: `ffmpeg -i input.wav -b:a 128k output.mp3`.

## Extracting Information with FFprobe

### Using FFprobe to Analyze Media Files
*   Running `ffprobe input.mp4` to display detailed information about the file.
*   Extracting specific information (e.g., resolution, duration) programmatically using command-line tools (like `grep`, `awk`, `sed`).
*   Example: `ffprobe -v error -show_entries stream=width,height -of default=noprint_wrappers=1:nokey=1 input.mp4`.

# III. Video Manipulation

## Cropping Videos

### Implementing Cropping
*   Using the `crop` filter.
*   Specifying crop dimensions and position: `ffmpeg -i input.mp4 -vf crop=width:height:x:y output.mp4`.
    *   `width`: Width of the cropped area.
    *   `height`: Height of the cropped area.
    *   `x`: Horizontal offset from the left edge.
    *   `y`: Vertical offset from the top edge.
*   Example: `ffmpeg -i input.mp4 -vf crop=640:480:100:50 output.mp4`.

## Resizing Videos

### Implementing Resizing
*   Using the `scale` filter.
*   Specifying new resolution: `ffmpeg -i input.mp4 -vf scale=width:height output.mp4`.
*   Preserving aspect ratio: `ffmpeg -i input.mp4 -vf scale=1280:-1 output.mp4` (scales width to 1280 and automatically adjusts height to maintain aspect ratio).
*   Using abbreviations: `ffmpeg -i input.mp4 -vf scale=hd720 output.mp4` (scales to 1280x720).

## Concatenating Videos

### Using the `concat` Demuxer
*   Creating a text file listing input files (e.g., `mylist.txt`).
    ```text
    file 'input1.mp4'
    file 'input2.mp4'
    file 'input3.mp4'
    ```
*   Running the concat command: `ffmpeg -f concat -safe 0 -i mylist.txt -c copy output.mp4`.
*   Explanation:
    *   `-f concat`: Specifies the concat demuxer.
    *   `-safe 0`: Allows relative paths.  Important for security when using untrusted input.  Prefer absolute paths.
    *   `-c copy`: Uses stream copy to avoid re-encoding (faster and lossless).

## Adding Subtitles

### Embedding Subtitles
*   Using the `subtitles` filter.
*   Specifying the subtitle file: `ffmpeg -i input.mp4 -vf subtitles=subtitles.srt output.mp4`.
*   Styling subtitles using ASS/SSA format and options.

# IV. Audio Manipulation

## Extracting Audio from Video

### Extracting Audio Streams
*   Using `-vn` to disable video processing: `ffmpeg -i input.mp4 -vn output.mp3`.
*   Specifying audio codec: `ffmpeg -i input.mp4 -vn -c:a libmp3lame output.mp3`.

## Adjusting Audio Volume

### Using the `volume` Filter
*   Adjusting volume levels: `ffmpeg -i input.mp4 -af "volume=2" output.mp4` (doubles the volume).
*   Using dB values: `ffmpeg -i input.mp4 -af "volume=10dB" output.mp4` (increases volume by 10dB).

## Adding Audio to Video

### Replacing Audio
*   Replacing existing audio: `ffmpeg -i input.mp4 -i audio.mp3 -c:v copy -map 0:v:0 -map 1:a:0 output.mp4`.
*   Explanation:
    *   `-map 0:v:0`: Selects the first video stream from the first input (input.mp4).
    *   `-map 1:a:0`: Selects the first audio stream from the second input (audio.mp3).

# V. Streaming with FFmpeg

## Streaming to RTMP Servers

### Setting up an RTMP Server
*   Using Nginx with the RTMP module.
*   Configuring the RTMP server address.

### Streaming from FFmpeg
*   Streaming a video file: `ffmpeg -re -i input.mp4 -c copy -f flv rtmp://server/application/streamkey`.
*   `-re` flag: reads input at native frame rate.
*   Streaming a live camera feed: `ffmpeg -f v4l2 -i /dev/video0 -c:v libx264 -preset ultrafast -f flv rtmp://server/application/streamkey`.

## Recording a Live Stream

### Saving a Stream to File
*   Using FFmpeg to record an RTMP stream: `ffmpeg -i rtmp://server/application/streamkey -c copy output.mp4`.

# VI. Advanced FFmpeg Techniques

## Using Filters for Complex Effects

### Understanding Filtergraphs
*   Serial and complex filtergraphs.

### Examples of Advanced Filters
*   Applying blur: `ffmpeg -i input.mp4 -vf "boxblur=5" output.mp4`.
*   Creating fade-in/fade-out effects: `ffmpeg -i input.mp4 -vf "fade=in:0:30,fade=out:120:30" output.mp4`.
*   Overlaying images: `ffmpeg -i input.mp4 -i logo.png -filter_complex "overlay=10:10" output.mp4`.

## Optimizing FFmpeg Performance

### Hardware Acceleration

*   Using hardware acceleration for encoding/decoding.
*   Checking available hardware acceleration methods: `ffmpeg -hwaccels`.
*   Enabling hardware acceleration (e.g., `-hwaccel cuvid` for NVIDIA GPUs).

### Multi-threading

*   Adjusting the number of threads used for encoding: `-threads <number>`.
*   Balancing performance and system load.

# VII. FFmpeg and Scripting

## Automating Tasks with Shell Scripts

### Writing Basic Shell Scripts
*   Creating scripts for batch processing.
*   Using loops to process multiple files.

### Example Script
```bash
#!/bin/bash
for file in *.avi; do
  ffmpeg -i "$file" -c:v libx264 -c:a aac "${file%.avi}.mp4"
done
```

## Using FFmpeg with Python

### Interacting with FFmpeg from Python
*   Using the `subprocess` module to run FFmpeg commands.

### Example Python Script
```python
import subprocess

input_file = "input.mp4"
output_file = "output.avi"

command = [
    "ffmpeg",
    "-i", input_file,
    "-c:v", "libx264",
    output_file
]

subprocess.run(command)
```
