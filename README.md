# Log-Archive-Tool
Build a tool to archive logs from the CLI with the date and time.


# 🗃️ Log Archive Tool

A simple and efficient CLI tool to compress and archive log files from a given directory. This tool helps keep your logs organized and manageable by automatically creating `.tar.gz` archives with timestamped filenames, and logs the archiving operations to a file.

---

## 📦 Features

- 🔍 Accepts a log directory as input
- 🗂️ Compresses all files in the directory into a `.tar.gz` archive
- 🕒 Appends the current date and time to the archive filename (e.g., `logs_archive_20250921_153000.tar.gz`)
- 📁 Stores archives in a specified directory (defaults to `./archives`)
- 📝 Logs each archiving operation (date, time, archive name) to a log file

---

## 🛠️ Requirements

- Unix/Linux system
- Bash shell
- `tar` command-line utility

---

# 🛠️ Project URL
                                                                                            - https://roadmap.sh/projects/log-archive-tool

---

## 🚀 Installation

Clone the repository and make the script executable:

```bash
git clone https://github.com/yourusername/log-archive-tool.git
cd log-archive-tool
chmod +x log-archive.sh

