# Docker FTP/TFTP

## build

`docker build -t tftp-server .`

## run

```bash
docker run -d --rm \
            --name myFtpTftp \
            -v <ftp_folder>:/ftp \
            -v <tftp_folder>:/tftp \
            -p <ftp_port>:21 \
            -p <tftp_port>:69 \
            ftp-tftp
```

## docker compose

`TFTP_FOLDER=/home docker compose up`