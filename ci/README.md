
## How to use the script

```
TELEGRAM_CHAT_ID= TELEGRAM_BOT_TOKEN= TELEGRAM_MESSAGE="" node noti_telegram
```

## Vercel config

- General -> Build & Development Settings

	+ Build Command: `yarn build; export CODE=$?; node noti_telegram`
	+ Install Command: `TELEGRAM_MESSAGE="[$VERCEL_ENV] Build start..." node noti_telegram; yarn install`


- Git -> Ignored Build Step

```
Behavior: Custom
Command: if [[ "$VERCEL_GIT_COMMIT_REF" == "develop" || "$VERCEL_GIT_COMMIT_REF" == "master" ]]; then exit 1; else exit 0; fi
```

- Environment

```
TELEGRAM_BOT_TOKEN=
TELEGRAM_CHAT_ID=

# Optional
CUSTOM_URL=
```
