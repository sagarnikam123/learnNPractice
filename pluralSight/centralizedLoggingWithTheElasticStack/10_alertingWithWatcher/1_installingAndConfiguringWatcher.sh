# 1_Installing and Configuring Watcher

# seeting email seding config in elasticsearch.yml
xpack.notification.email.account:
  globo:
    email_defaults:
      from: alerts@globomatics.com
      cc: administrator@globomatics.com
    smtp:
      auth: false
      host: 192.168.0.17

action.auto_create_index: .security,.monitoring*,.watches,.triggered_watches,.watcher-history*
xpack.security.enabled: false
