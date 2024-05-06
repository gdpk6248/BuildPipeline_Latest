FROM openjdk:8-jdk-alpine
RUN addgroup -S wezvatech && adduser -S wezvatech -G wezvatech && mkdir -p /opt/wezva
WORKDIR /opt/wezva
COPY target/wezva-springboot-docker-0.1.0.jar app.jar
COPY app.properties app.properties
COPY bootstrap.sh bootstrap.sh
RUN chown -R wezvatech:wezvatech /opt/wezva && chmod +x bootstrap.sh
USER wezvatech
EXPOSE 8080
ENTRYPOINT ["/bin/sh", "bootstrap.sh"]
