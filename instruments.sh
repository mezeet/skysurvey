export CLASSPATH=build/classes
export CLASSPATH=$CLASSPATH:WebContent/WEB-INF/lib/activejdbc-1.4.6.jar
export CLASSPATH=$CLASSPATH:WebContent/WEB-INF/lib/javalite-common-1.4.6.jar
export CLASSPATH=$CLASSPATH:WebContent/WEB-INF/lib/mysql-connector-java-5.0.4.jar
export CLASSPATH=$CLASSPATH:WebContent/WEB-INF/lib/slf4j-api-1.5.10.jar
export CLASSPATH=$CLASSPATH:WebContent/WEB-INF/lib/slf4j-simple-1.5.10.jar
export CLASSPATH=$CLASSPATH:build_time_libs/activejdbc-instrumentation-1.4.6.jar
export CLASSPATH=$CLASSPATH:build_time_libs/javassist-3.8.0.GA.jar

java -cp $CLASSPATH -DoutputDirectory=build/classes org.javalite.instrumentation.Main
