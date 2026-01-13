FROM fredboat/lavalink:4

# 設定ファイルをコピー
COPY application.yml application.yml

# ポートを指定して実行
ENTRYPOINT ["java", "-Xmx350m", "-Dserver.port=${PORT}", "-jar", "Lavalink.jar"]
