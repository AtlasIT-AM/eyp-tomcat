# file $(dirname $(dirname $(dirname $(find / -xdev -iname jni_md.h | head -n1))))/bin/java >/dev/null 2>&1; echo $?

jdk=Facter::Util::Resolution.exec('bash -c \'file $(dirname $(dirname $(dirname $(find / -xdev -iname jni_md.h | head -n1))))/bin/java >/dev/null 2>&1; echo $?\'')

Facter.add('eyp_tomcat_check_jdk') do
    setcode do
        if (jdk == '0')
          true
        else
          false
        end
    end
end
