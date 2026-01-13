FROM eclipse-temurin:17-jre

WORKDIR /app

# Lavalink.jar を直接ダウンロード（サイズ制限回避）
RUN apt-get update && apt-get install -y curl \
 && curl -L https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar -o Lavalink.jar \
 && apt-get remove -y curl \
 && apt-get autoremove -y \
 && rm -rf /var/lib/apt/lists/*

COPY application.yml application.yml

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
