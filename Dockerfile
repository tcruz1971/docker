FROM tcruz1971/raspberry:20160204
RUN mkdir -p /run/mysqld /run/cyrus/lock /run/cyrus/proc /run/sendsigs.omit.d /run/saslauthd /run/fetchmail /run/fail2ban && chmod 777 /tmp && chown mysql:root /run/mysqld
COPY startup.sh /tmp/startup.sh
RUN chmod 777 /tmp/startup.sh && chown -R cyrus:mail /run/cyrus && chgrp sasl /run/saslauthd && chown -R fetchmail /run/fetchmail
ENTRYPOINT ["/tmp/startup.sh"]
