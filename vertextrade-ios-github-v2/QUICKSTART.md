# VertexTrade iOS - Quick Start Guide

## What You Need
- Mac computer
- Xcode (free from Mac App Store)
- Apple ID
- iPhone with USB cable

## 5-Minute Setup

### 1. Copy to Mac
Copy the entire `VertexTrade` folder to your Mac.

### 2. Open in Xcode
- Open **Xcode**
- Click **"Open a project or file"**
- Select the `VertexTrade` folder

### 3. Configure Signing
- Click `VertexTrade` in the left sidebar
- Select the `VertexTrade` target
- Go to **"Signing & Capabilities"** tab
- Select your **Team** (your Apple ID)
- Change **Bundle Identifier** to something unique, e.g.:
  ```
  com.yourname.vertextrade
  ```

### 4. Connect iPhone
- Plug your iPhone into your Mac
- Select your iPhone from the device dropdown at the top of Xcode

### 5. Build & Run
- Click the **Play button** (▶) or press `Cmd+R`
- Wait for it to build and install on your iPhone

### 6. Trust the App
On your iPhone:
- Go to **Settings** → **General** → **VPN & Device Management**
- Tap your Apple ID under "Developer App"
- Tap **Trust**

### 7. Done!
Find **VertexTrade** on your home screen and tap to open!

---

## Troubleshooting

| Problem | Solution |
|---------|----------|
| Build fails | Make sure your iPhone is unlocked and trusted on the Mac |
| "Untrusted Developer" | Go to Settings → General → VPN & Device Management → Trust |
| App won't install | Try Product → Clean Build Folder (Cmd+Shift+K) in Xcode |
| Blank screen | Make sure `www/index.html` exists in the project |

---

## Important Notes

- **Free Apple ID**: App expires after 7 days, need to rebuild
- **Paid Developer Account** ($99/year): App lasts 1 year
- Data is stored locally on your iPhone (localStorage)
- No backend server needed - everything works offline

---

## Project Structure
```
VertexTrade/
├── VertexTradeApp.swift    # Main app entry point
├── ContentView.swift       # WebView wrapper
├── Info.plist             # App configuration
├── Assets.xcassets/       # App icons
└── www/
    └── index.html         # Your trading platform (already included)
```

To update the app, just replace `www/index.html` with your new version and rebuild!

---

Enjoy your trading app on iOS! 🚀
