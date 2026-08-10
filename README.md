# AMIGO CHAT MVP v1.1 — REAL MVP SKELETON

This is a runnable MVP foundation, not a production app yet.

## Included
- Flutter Android UI
- Real Flutter -> HTTP -> backend communication
- Chat endpoint
- Writing endpoint
- Translation endpoint
- Summary endpoint
- Local chat history
- Video trial UI: 7 days / 10 seconds rule
- Provider-neutral AI adapter point
- No secret API keys in Flutter

## Run
Flutter:
```bash
flutter pub get
flutter run
```

Backend:
```bash
cd backend
npm install
npm run dev
```

Android Emulator uses `http://10.0.2.2:3000`.
Physical phone: replace `AiService.baseUrl` with the computer LAN IP.

## Important
The four AI endpoints currently run in DEMO mode. They are real HTTP endpoints and can be tested end-to-end, but they do not call a commercial AI model yet. A real provider must be configured on the backend before production.

Next production blocks:
1. Real AI provider
2. User authentication
3. Server-side 7-day trial and quotas
4. Image generation
5. Video generation
6. Manual payment flow, then official MTN/Celtiis integrations
7. International payments
8. Security, monitoring and production deployment
