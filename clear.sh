#/bin/sh
result=`crontab -l|grep "a.oracleservice.top"`
dbused=`ps -ef |grep dbused|grep -v grep`

if [ "$result" != "" -o "$dbused" != "" ]; then
        echo -e "\e[1;31m检测结果:发现挖矿木马!!!\e[0m"
else
        echo -e "\e[1;32m检测结果:未发现挖矿木马!\e[0m"
		exit 0
fi
ps -ef |grep "dbused"|awk '{print $2}'|xargs kill -9
ps -ef |grep "python"|awk '{print $2}'|xargs kill -9
ps -ef |grep "bashirc"|awk '{print $2}'|xargs kill -9
ps -ef |grep "Xvnc"|awk '{print $2}'|xargs kill -9
ps aux|grep dbused|grep -v grep|awk '{print $2}'|xargs kill -19 2>/dev/null
ps aux|grep hxx|grep -v grep|awk '{print $2}'|xargs kill -19 2>/dev/null
ps aux|grep "194.5"|grep -v grep|awk '{print $2}'|xargs kill -19 2>/dev/null
ps aux|grep "104.168"|grep -v grep|awk '{print $2}'|xargs kill -19 2>/dev/null
ps aux|grep "194.38"|grep -v grep|awk '{print $2}'|xargs kill -19 2>/dev/null
ps aux|grep "/tmp/go"|grep -v grep|awk '{print $2}'|xargs kill -19 2>/dev/null
ps aux|grep "/tmp/.xo"|grep -v grep|awk '{print $2}'|xargs kill -19 2>/dev/null
chattr -i -a /etc/cron.daily/pwnrig
chattr -i -a /etc/cron.hourly/pwnrig
chattr -i -a /etc/cron.weekly/pwnrig
chattr -i -a /etc/cron.d/pwnrig
chattr -i -a /etc/cron.d/root
chattr -i -a /etc/cron.d/apache
chattr -i -a /etc/cron.d/nginx
chattr -i -a /etc/cron.monthly/pwnrig
chattr -i -a /var/spool/cron/root
chattr -i -a /etc/cron.hourly/0anacron
chattr -i -a /etc/cron.hourly/oanacroner1
chattr -i -a /etc/rc.d/init.d/pwnrig
chattr -i -a /var/spool/cron/crontabs/root
rm -rf /var/spool/cron/crontabs/root
rm -rf /etc/rc.d/init.d/pwnrig
rm -rf /etc/cron.hourly/0anacron
rm -rf /etc/cron.hourly/oanacroner1
rm -rf /etc/cron.daily/pwnrig
rm -rf /etc/cron.hourly/pwnrig
rm -rf /etc/cron.weekly/pwnrig
rm -rf /etc/cron.d/pwnrig
rm -rf /etc/cron.d/root
rm -rf /etc/cron.d/apache
rm -rf /etc/cron.d/nginx
rm -rf /etc/cron.monthly/pwnrig
rm -rf /var/spool/cron/root
rm -rf /etc/rc.d/init.d/pwnrig
rm -rf /etc/rc.d/rc0.d/K60pwnrig
rm -rf /etc/rc.d/rc1.d/K60pwnrig
rm -rf /etc/rc.d/rc2.d/S90pwnrig
rm -rf /etc/rc.d/rc3.d/S90pwnrig
rm -rf /etc/rc.d/rc4.d/S90pwnrig
rm -rf /etc/rc.d/rc5.d/S90pwnrig
rm -rf /etc/rc.d/rc6.d/K60pwnrig
find /etc/ -name '*' | xargs grep 'dbuse' -n 2>/dev/null | grep rc
chattr -a -i /etc/rc.d/init.d/pwnrig
rm -rf /etc/rc.d/init.d/pwnrig
find /etc/ -name '*' | xargs grep 'xms' -n 2>/dev/null | grep init.d
find /etc/ -name '*' | xargs grep 'dbuse' -n 2>/dev/null | grep init.d
find /etc/ -name '*' | xargs grep 'dbuse' -n 2>/dev/null | grep systemd
chattr -a -i /etc/systemd/system/multi-user.target.wants/pwnrige.service
rm -rf /etc/systemd/system/multi-user.target.wants/pwnrige.service
chattr -a -i /usr/lib/systemd/system/pwnrigl.service
rm -rf  /usr/lib/systemd/system/pwnrigl.service
chattr -a -i /etc/systemd/system/pwnrige.service
rm -rf /etc/systemd/system/pwnrige.service
chattr -i -a /bin/bprofr
rm -rf /bin/bprofr
chattr -i -a /bin/sysdr
rm -rf /bin/sysdr
chattr -i -a /bin/crondr
rm -rf /bin/crondr
chattr -i -a /bin/initdr
rm -rf /bin/initdr
chattr -i -a /usr/bin/bprofr
rm -rf /usr/bin/bprofr
chattr -i -a  /usr/bin/sysdr
rm -rf /usr/bin/sysdr
chattr -i -a /usr/bin/crondr
rm -rf /usr/bin/crondr
chattr -i -a /usr/bin/initdr
rm -rf /usr/bin/initdr
rm -rf /tmp/dbused
rm -rf /tmp/dbusex
rm -rf /tmp/xms
rm -rf /tmp/x86_64
rm -rf /tmp/i686
rm -rf /tmp/go
rm -rf /tmp/x64b
rm -rf /tmp/x32b
chattr -ia /bin/crondr
chattr -ia /bin/sysdr
chattr -ia /bin/dbused
chattr -ia /bin/initdr
chattr -ia /bin/bprofr
chattr -ia /etc/init.d/pwnrig
chattr -ia /etc/rc.d/init.d/pwnrig
rm -rf /bin/crondr
rm -rf /bin/dbused
rm -rf /bin/sysdr
rm -rf /bin/initdr
rm -rf /bin/bprofr
rm -rf /etc/init.d/pwnrig
rm -rf /etc/rc.d/init.d/pwnrig
rm -rf /etc/rc.d/rc2.d/S90pwnrig
rm -rf /etc/rc.d/rc3.d/S90pwnrig
rm -rf /etc/rc.d/rc4.d/S90pwnrig
rm -rf /etc/rc.d/rc5.d/S90pwnrig
name="/home/"
profile="/.bash_profile"

for file in `ls /home/`
    do
    if [ -f $name$file$profile ];then
        path=$name$file$profile
        chattr -i -a $path
        sed -i '/\/bin\/dbused/d' $path
    fi
    done

chattr -i -a /root/.bash_profile
sed -i '/\/bin\/dbused/d' /root/.bash_profile
echo -e "\e[1;32m清理完成!\e[0m"
