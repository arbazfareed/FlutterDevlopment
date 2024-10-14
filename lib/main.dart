import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// A StatefulWidget to handle dynamic state changes
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// The State class
class _MyAppState extends State<MyApp> {
  bool showcontainer = false; // Initially, the container is hidden

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Flutter Development'),
          ),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Wrap "Hi" in GestureDetector to make it clickable
              GestureDetector(
                onTap: () {
                  setState(() {
                    showcontainer = !showcontainer; // Toggle the container visibility
                  });
                },
                child: Text(
                  'Hi',
                  style: TextStyle(
                    fontSize: 24,        // Set the font size
                    color: Colors.red,    // Set the text color
                  ),
                ),
              ),
              SizedBox(height: 20), // Add some space

              // Show the container with a text field when 'showcontainer' is true
              if (showcontainer)
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write something...',
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}


// Shortcut guide:
// ctr + / -> for comments
// stf + Enter  -> Generates StatefulWidget in Android Studio
// alt + enter  -> Quick fixes or wrapping in widgets
// ctrl + space -> Shows code suggestions


// import yt_dlp
// from tqdm import tqdm
//
// # Progress hook to show the download progress
// def progress_hook(d):
// if d['status'] == 'downloading':
// progress_bar.set_description(f"Downloading: {d['filename']}")
// progress_bar.update(d['downloaded_bytes'] - progress_bar.n)  # Update progress bar
// elif d['status'] == 'finished':
// progress_bar.close()
// print(f"\nDownload complete: {d['filename']}")
//
// def show_available_resolutions(url):
// with yt_dlp.YoutubeDL() as ydl:
// info = ydl.extract_info(url, download=False)  # Extract video info without downloading
// formats = info['formats']  # Get available formats
// resolutions = set()
//
// for fmt in formats:
// resolution = fmt.get('height')
// if resolution is not None:
// resolutions.add(f"{resolution}p")
//
// return sorted(resolutions)
//
// def download_youtube_video(url, resolution="720p"):
// global progress_bar
//
// # Options for the downloader
// ydl_opts = {
// 'format': f'bestvideo[height<={resolution[:-1]}]+bestaudio/best',  # Select best video within resolution
// 'noplaylist': True,  # Download single video, no playlist
// 'outtmpl': '%(title)s.%(ext)s',  # Output file template
// 'progress_hooks': [progress_hook],  # Hook to track progress
// 'continue_dl': True,  # Continue download if interrupted
// 'retries': 10,  # Retry up to 10 times in case of errors
// }
//
// with yt_dlp.YoutubeDL(ydl_opts) as ydl:
// try:
// info = ydl.extract_info(url, download=False)  # Extract video info without downloading
// total_bytes = info['filesize'] or info['filesize_approx']  # Get video size
// progress_bar = tqdm(total=total_bytes, unit='B', unit_scale=True, desc="Downloading", dynamic_ncols=True)
// ydl.download([url])  # Start the download
// except Exception as e:
// print(f"An error occurred: {e}")
//
// if __name__ == "__main__":
// video_url = input("Enter the YouTube video URL: ")
//
// # Show available resolutions
// available_resolutions = show_available_resolutions(video_url)
// print(f"Available resolutions: {available_resolutions}")
//
// # Get desired resolution from the user
// resolution = input("Enter the desired resolution (e.g., 1080p, 720p): ").strip()
//
// if resolution not in available_resolutions:
// print(f"Warning: {resolution} is not available. Downloading the best available quality.")
// resolution = max(available_resolutions)  # Default to highest resolution
//
// download_youtube_video(video_url, resolution)

// import yt_dlp
// from tqdm import tqdm
//
// # Progress hook to show the download progress
// def progress_hook(d):
// if d['status'] == 'downloading':
// progress_bar.set_description(f"Downloading: {d['filename']}")
// progress_bar.update(d['downloaded_bytes'] - progress_bar.n)  # Update progress bar
// elif d['status'] == 'finished':
// progress_bar.close()
// print(f"\nDownload complete: {d['filename']}")
//
// def download_youtube_video(url, resolution="720p"):
// global progress_bar
//
// # Options for the downloader
// ydl_opts = {
// 'format': f'bestvideo[height<={resolution[:-1]}]+bestaudio/best',  # Select best video within resolution
// 'noplaylist': True,  # Download single video, no playlist
// 'outtmpl': '%(title)s.%(ext)s',  # Output file template
// 'progress_hooks': [progress_hook],  # Hook to track progress
// 'continue_dl': True,  # Continue download if interrupted
// 'retries': 10,  # Retry up to 10 times in case of errors
// }
//
// with yt_dlp.YoutubeDL(ydl_opts) as ydl:
// try:
// info = ydl.extract_info(url, download=False)  # Extract video info without downloading
// total_bytes = info['filesize'] or info['filesize_approx']  # Get video size
// progress_bar = tqdm(total=total_bytes, unit='B', unit_scale=True, desc="Downloading", dynamic_ncols=True)
// ydl.download([url])  # Start the download
// except Exception as e:
// print(f"An error occurred: {e}")
//
// if __name__ == "__main__":
// video_url = input("Enter the YouTube video URL: ")
// resolution = input("Enter the desired resolution (e.g., 1080p, 720p): ").strip()
//
// download_youtube_video(video_url, resolution)
