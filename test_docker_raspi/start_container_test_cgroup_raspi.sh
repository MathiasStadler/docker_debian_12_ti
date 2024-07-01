# FROM HERE
# https://serverfault.com/questions/1053187/systemd-fails-to-run-in-a-docker-container-when-using-cgroupv2-cgroupns-priva/1054414#1054414

docker run -t \
--rm \
--name systemd_test \
--privileged \
--cap-add SYS_ADMIN \
--security-opt seccomp=unconfined \
--cgroup-parent=docker.slice \
--cgroupns private \
--tmpfs /tmp \
--tmpfs /run \
--tmpfs /run/lock \
debian_test_cgroups


# FROM HERE
# https://serverfault.com/questions/1053187/systemd-fails-to-run-in-a-docker-container-when-using-cgroupv2-cgroupns-priva

docker run -i -t \
--rm \
--name debian_test_cgroups \
--read-only \
--security-opt seccomp=unconfined \
--hostname freeipa.corp \
--init=false \
--cgroupns host \
-v /sys/fs/cgroup/freeipa.scope:/sys/fs/cgroup:rw
debian_test_cgroups 


# systemd 252-13.el9_2 running in system mode (+PAM +AUDIT +SELINUX -APPARMOR +IMA +SMACK +SECCOMP +GCRYPT +GNUTLS +OPENSSL +ACL +BLKID +CURL +ELFUTILS -FIDO2 +IDN2 -IDN -IPTC +KMOD +LIBCRYPTSETUP +LIBFDISK +PCRE2 -PWQUALITY +P11KIT -QRENCODE +TPM2 +BZIP2 +LZ4 +XZ +ZLIB +ZSTD -BPF_FRAMEWORK +XKBCOMMON +UTMP +SYSVINIT default-hierarchy=unified)