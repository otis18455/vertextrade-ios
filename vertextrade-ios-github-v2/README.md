# VertexTrade Pro - iOS Build Instructions

This folder contains everything you need to build and sideload VertexTrade Pro on your iPhone.

## Requirements

- **Mac computer** (MacBook, iMac, Mac Mini)
- **Xcode** (free from Mac App Store)
- **Apple ID** (free developer account works)
- **iPhone** with iOS 14.0 or later
- **USB cable** to connect iPhone to Mac

## Project Structure

```
ios/
├── VertexTrade/
│   ├── VertexTradeApp.swift    # Main app entry
│   ├── ContentView.swift       # WebView wrapper
│   ├── Info.plist             # App configuration
│   └── www/
│       └── index.html         # Your trading app
└── README.md                  # This file
```

## Build Instructions

### Step 1: Setup Project on Mac

1. Copy the `VertexTrade` folder to your Mac
2. Open **Xcode** on your Mac
3. Click "Open a project or file"
4. Navigate to the `VertexTrade` folder and open it

### Step 2: Configure Signing

1. In Xcode, click on `VertexTrade` in the project navigator (left sidebar)
2. Select the `VertexTrade` target
3. Go to the **Signing & Capabilities** tab
4. Check "Automatically manage signing"
5. Select your **Team** (your Apple ID)
6. Change the **Bundle Identifier** to something unique like:
   ```
   com.yourname.vertextrade
   ```

### Step 3: Build the App

1. Connect your iPhone to your Mac with USB
2. At the top of Xcode, select your iPhone from the device dropdown
   (It will show as "Your Name's iPhone")
3. Click the **Play button** (▶) or press Cmd+R to build and run
4. If prompted, enter your Mac password to allow codesigning
5. Wait for the build to complete and app to install on your iPhone

### Step 4: Trust the App (First Time Only)

1. On your iPhone, go to **Settings** → **General** → **VPN & Device Management**
2. Under "Developer App", tap on your Apple ID
3. Tap **Trust**
4. Confirm by tapping **Trust** again

### Step 5: Launch the App

1. Find **VertexTrade** on your home screen
2. Tap to open
3. The app will load with your trading platform!

---

## Troubleshooting

### "Unable to install" Error

- Make sure your iPhone is unlocked
- Try disconnecting and reconnecting the USB cable
- Restart Xcode and try again

### "Untrusted Developer" Message

- Follow Step 4 above to trust the developer certificate
- You must do this every 7 days with a free developer account

### App Won't Launch

- Check that your iPhone iOS version is 14.0 or later
- In Xcode, try Product → Clean Build Folder (Cmd+Shift+K), then rebuild

### WebView Shows Blank Page

- Make sure the `index.html` file is in the `www` folder
- Check that it's included in the app bundle (should show in Xcode file list)

---

## Alternative: Using AltStore (No Mac Required!)

If you don't have a Mac, you can use **AltStore** to sideload on Windows:

### Requirements
- Windows 10/11 PC
- iTunes (Microsoft Store version)
- AltServer (free download)
- Your iPhone

### Steps
1. Download and install **AltServer** from altstore.io
2. Connect iPhone to PC
3. Install AltStore on your iPhone via AltServer
4. In AltStore, use the "+" button to add the IPA file
5. Sign in with your Apple ID

**Note:** You'll need to create an IPA file first (see Creating IPA below)

---

## Creating IPA File (For AltStore)

To create an IPA from Xcode:

1. In Xcode, select **Any iOS Device (arm64)** as target
2. Go to Product → Archive
3. Wait for archive to complete
4. In Organizer, click **Distribute App**
5. Select **Development**
6. Choose your signing certificate
7. Export the IPA file

The IPA will be saved to your chosen location.

---

## Keeping the App Working

### Free Developer Account (7-day limit)
With a free Apple ID, the app expires after 7 days. To refresh:

1. Connect iPhone to Mac
2. Open Xcode
3. Build and run again (Cmd+R)

### Paid Developer Account ($99/year)
With a paid Apple Developer account, the app lasts for 1 year.

---

## Customizing the App

To update the web content:

1. Edit the `www/index.html` file
2. Replace it with your updated trading platform
3. Rebuild in Xcode
4. The changes will appear on your iPhone

---

## Need Help?

Common issues and solutions:

**Q: Do I need to pay Apple $99?**
A: No! Free Apple ID works for sideloading, but you need to refresh every 7 days.

**Q: Can I use Windows instead of Mac?**
A: For building, no - Xcode only runs on Mac. But you can use AltStore on Windows to install IPA files.

**Q: Will this work on iPad?**
A: Yes! The app works on both iPhone and iPad.

**Q: Can I publish to App Store?**
A: This requires a paid Apple Developer account ($99/year) and App Store review.

---

## Quick Start Checklist

- [ ] Have a Mac with Xcode installed
- [ ] Have an Apple ID
- [ ] iPhone connected via USB
- [ ] Opened VertexTrade folder in Xcode
- [ ] Set unique Bundle Identifier
- [ ] Selected Team for signing
- [ ] Selected iPhone as target
- [ ] Clicked Play button to build
- [ ] Trusted developer on iPhone
- [ ] App launches successfully!

---

**Enjoy trading on your iPhone with VertexTrade Pro!**
