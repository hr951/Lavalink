FROM fredboat/lavalink:4

# 設定ファイルをコピー
COPY application.yml application.yml

# Renderは動的にポートを割り当てるため、環境変数PORTを使用するように設定
ENTRYPOINT ["java", "-Dserver.port=${PORT}", "-jar", "Lavalink.jar"]
