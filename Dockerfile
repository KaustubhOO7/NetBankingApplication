FROM maven:3.8.3-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM maven:3.8.4-openjdk-17-slim
COPY --from=build /target/OnlineBankApplication-0.0.1-SNAPSHOT.jar OnlineBankApplication.jar
EXPOSE 8081
ENTRYPOINT ["java","-jar","OnlineBankApplication.jar"]


