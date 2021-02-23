FROM registry.redhat.io/ubi8/ubi
RUN dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
RUN dnf -y install stress-ng
RUN dd if=/dev/urandom of=random.txt bs=M count=500
CMD ["stress-ng", "--cpu", "0", "--timeout", "1000000"]