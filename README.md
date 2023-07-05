<!-- ABOUT THE PROJECT -->
## About The Project
This project is a Bash script that allows you to check the status of a server by sending multiple ping requests and extracting important information from the output. 

Key features of this project:
* Bash Scripting: The project is implemented as a Bash script, which makes it easily executable on Unix-like systems without requiring additional software or tools.
* Ping Statistics Extraction: The script extracts important information from the ping output, including packet loss and round-trip time (RTT) statistics. It provides the percentage of packet loss and the minimum, average, and maximum RTT values.
* Simple and Convenient: The script provides a straightforward and convenient way to check server status without the need for complex configurations or dependencies.


### Built With
The script is developed using Bash 

[![Bash][Bash]][Bash-url]

<!-- Getting Started Section -->
## Getting Started
To get started with the system monitoring script, follow the steps below:

<!-- Installation Section -->
### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/sbendarsky/Server-Status.git

2. Open a terminal and navigate to the directory where the script is located.

2. Make the script executable:

   ```bash
   chmod +x check-server.sh

### Usage

1. Execute the script by running the following command:
   ```bash
   ./check-server.sh

2. Enter the server address or IP when prompted.

### Output
Upon running the script, you will see the following information displayed in the terminal:

 ```yaml
 Server is online.
Packet Loss: <packet_loss_percentage>
Round-Trip Time (RTT) Statistics:
Minimum: <rtt_min> ms
Average: <rtt_avg> ms
Maximum: <rtt_max> ms
```

<!-- MARKDOWN LINKS & IMAGES -->
[Bash]: https://img.shields.io/badge/Bash-000000?style=for-the-badge&labelColor=black&logo=gnubash&logoColor=white
[Bash-url]: https://www.gnu.org/software/bash/



