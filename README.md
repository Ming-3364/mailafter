# mailafter

Send e-mail after long time job finish.

## 1. set up mail

use `msmtp`:

1. install:

    ``` bash
    sudo apt install msmtp
    ```

2. config:

    Create config file by `nano ~/.msmtprc`, and config your smtp server.
    A example use qq is below:

    ``` bash
    # Default settings
    defaults
    auth           on
    tls            on
    tls_trust_file /etc/ssl/certs/ca-certificates.crt
    logfile        ~/.msmtp.log

    # QQ
    account        qq
    host           smtp.qq.com
    port           587
    from           your_email@qq.com
    user           your_email@qq.com
    password       your_smtp_auth_code

    # set default account
    account default : qq
    ```

    NOTE: `~/.msmtprc` contains secrets and therefore must have no more than user read/write permissions.
    You should change it to 600:

    ``` bash
    chmod 600 ~/.msmtprc
    ```  

3. test

    Try following command:

    ``` bash
    echo "This is a test mail." | msmtp <target@email.com>
    ```

## 2. Set up mailafter

``` bash
git clone https://github.com/Ming-3364/mailafter.git
./setup.sh
```

**Modify `MAIL_TO` in `mailafter`**

## 4. Usage

``` bash
mailafter <your_command>
```
