platform "el-7-s390x" do |plat|
  plat.servicedir "/usr/lib/systemd/system"
  plat.defaultdir "/etc/sysconfig"
  plat.servicetype "systemd"

  plat.add_build_repository "http://pl-build-tools-staging.delivery.puppetlabs.net/yum/el/7/s390x/pl-build-tools-staging-s390x.repo"
  plat.add_build_repository "http://pl-build-tools-staging.delivery.puppetlabs.net/yum/el/7/x86_64/pl-build-tools-staging-x86_64.repo"
  plat.provision_with "yum install --assumeyes autoconf automake createrepo rsync gcc make rpmdevtools rpm-libs yum-utils rpm-sign"
  plat.install_build_dependencies_with "yum install --assumeyes"
  plat.cross_compiled true
  plat.vmpooler_template "redhat-7-x86_64"
end