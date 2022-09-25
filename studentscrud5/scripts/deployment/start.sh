#!/usr/bin/env bash
type java >/dev/null 2>&1 || {
    echo >&2 "JAVA binary not found. Aborting."; exit 1;
}
if [ -n "$JAVA_OPTS" ]; then
    echo "JAVA OPTS: $JAVA_OPTS"
else
    # Default Java Opts
    JAVA_OPTS=$(echo -e "-XX:+UseStringDeduplication" \
        "-XX:+UseParNewGC" \
        "-XX:+UseConcMarkSweepGC" \
        "-XX:ConcGCThreads=1" \
        "-XX:ParallelGCThreads=1" \
        "-XX:+CMSParallelRemarkEnabled" \
        "-Xms2048m" \
        "-Xmx2048m" \
        "-Xloggc:/var/log/reco-v2-gc.log" \
        "-XX:+PrintGCDetails" \
        "-XX:+PrintGCTimeStamps" \
        "-XX:+PrintGCCause " \
        "-XX:-PrintTenuringDistribution " \
        "-XX:+UseGCLogFileRotation " \
        "-XX:NumberOfGCLogFiles=5 " \
        "-XX:GCLogFileSize=2M " \
        "-XX:MaxMetaspaceSize=512m")
fi

if [ -n "$SYSTEM_OPTS" ]; then
    echo "SYSTEM_OPTS: $SYSTEM_OPTS"
    JAVA_OPTS="$JAVA_OPTS $SYSTEM_OPTS"
fi

echo "----------------------------------------------------------------"
echo "FINAL JAVA_OPTS: $JAVA_OPTS"
echo "----------------------------------------------------------------"

export JAVA_OPTS="${JAVA_OPTS}"
export hostname="${HOSTNAME}"

/opt/tomcat85/bin/catalina.sh run