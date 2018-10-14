ARG AMAZON_LINUX_VERSION=2018.03

FROM amazonlinux:${AMAZON_LINUX_VERSION}

RUN yum -y upgrade \
    && yum -y install \
        acl \
        acpid \
        amazon-ssm-agent \
        at \
        attr \
        audit \
        authconfig \
        aws-amitools-ec2 \
        aws-apitools-as \
        aws-apitools-com \
        aws-apitools-ec2 \
        aws-apitools-elb \
        aws-apitools-mon \
        aws-cfn-bootstrap \
        aws-cli \
        bc \
        bind-utils \
        cloud-disk-utils \
        cloud-init \
        crontabs \
        cryptsetup \
        cyrus-sasl \
        cyrus-sasl-plain \
        dbus \
        dhclient \
        dmraid \
        dracut \
        dump \
        ec2-net-utils \
        ec2-utils \
        ed \
        epel-release \
        exim \
        generic-logos \
        get_reference_source \
        gpm-libs \
        grub \
        grubby \
        hesiod \
        hibagent \
        hmaccalc \
        keyutils \
        less \
        lsof \
        lvm2 \
        man-db \
        man-pages \
        mdadm \
        nano \
        nc \
        nfs-utils \
        ntp \
        ntpdate \
        ntsysv \
        numactl \
        openssh-clients \
        openssh-server \
        parted \
        passwd \
        pciutils \
        perl \
        perl-Digest-HMAC \
        pm-utils \
        policycoreutils \
        procmail \
        psacct \
        python27-boto \
        python27-virtualenv \
        quota \
        rmt \
        rng-tools \
        rootfiles \
        rsyslog \
        rsync \
        screen \
        sendmail \
        setserial \
        sudo \
        sysfsutils \
        time \
        tmpwatch \
        traceroute \
        unzip \
        wget \
        zip \
    && yum clean all

RUN chkconfig cloud-init off
RUN chkconfig cloud-init-local off

RUN adduser ec2-user --create-home --user-group --groups wheel

CMD /sbin/init
