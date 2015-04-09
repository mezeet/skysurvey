#export CLASSPATH=classes
#for file in `ls WebContent/WEB-INF/lib` ; do export CLASSPATH=$CLASSPATH:lib/$file; done
#for file in `ls build_time_libs` ; do export CLASSPATH=$CLASSPATH:build_time_libs/$file; done
#java -cp $CLASSPATH -DoutputDirectory=build/classes org.javalite.instrumentation.Main

# 아래는 직접 수동으로 파일이름을 클래스 패스에 추가하는 것 

export CLASSPATH=build/classes
export CLASSPATH=$CLASSPATH:WebContent/WEB-INF/lib/activejdbc-1.4.6.jar
export CLASSPATH=$CLASSPATH:WebContent/WEB-INF/lib/javalite-common-1.4.6.jar
export CLASSPATH=$CLASSPATH:WebContent/WEB-INF/lib/mysql-connector-java-5.0.4.jar
export CLASSPATH=$CLASSPATH:WebContent/WEB-INF/lib/slf4j-api-1.5.10.jar
export CLASSPATH=$CLASSPATH:WebContent/WEB-INF/lib/slf4j-simple-1.5.10.jar
export CLASSPATH=$CLASSPATH:build_time_libs/activejdbc-instrumentation-1.4.6.jar
export CLASSPATH=$CLASSPATH:build_time_libs/javassist-3.8.0.GA.jar

java -cp $CLASSPATH -DoutputDirectory=build/classes org.javalite.instrumentation.Main



# 아래는 직접 수동으로 파일이름을 클래스 패스에 추가하는 것 

#export CLASSPATH=build/classes
#export CLASSPATH=$CLASSPATH:WebContent/WEB-INF/lib/activejdbc-1.4.6.jar
#export CLASSPATH=$CLASSPATH:WebContent/WEB-INF/lib/javalite-common-1.4.6.jar
#export CLASSPATH=$CLASSPATH:WebContent/WEB-INF/lib/mysql-connector-java-5.0.4.jar
#export CLASSPATH=$CLASSPATH:WebContent/WEB-INF/lib/slf4j-api-1.5.10.jar
#export CLASSPATH=$CLASSPATH:WebContent/WEB-INF/lib/slf4j-simple-1.5.10.jar
#export CLASSPATH=$CLASSPATH:build_time_libs/activejdbc-instrumentation-1.4.6.jar
#export CLASSPATH=$CLASSPATH:build_time_libs/javassist-3.8.0.GA.jar

#java -cp $CLASSPATH -DoutputDirectory=build/classes org.javalite.instrumentation.Main



