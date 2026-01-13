FROM fredboat/lavalink:4

# 設定ファイルをコピー
COPY application.yml application.yml

# プラグインが保存されるディレクトリを作成（パーミッションエラー防止）
USER root
RUN mkdir -p /opt/lavalink/plugins && chown -R lavalink:lavalink /opt/lavalink/plugins
USER lavalink

ENTRYPOINT ["java", "-Dserver.port=${PORT}", "-jar", "Lavalink.jar"]
