\# Load Balancer



This project sets up a load-balanced web infrastructure using two web servers (web-01, web-02) running Nginx behind an HAProxy load balancer (lb-01).



\## Tasks

\- 0-custom\_http\_response\_header: Configures Nginx on web-01 and web-02 to return a custom `X-Served-By` header identifying the server.

\- 1-install\_load\_balancer: Installs and configures HAProxy on lb-01 to distribute traffic across web-01 and web-02 using round-robin.

