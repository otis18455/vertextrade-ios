# Build with GitHub Actions + Sideloadly (No Mac Needed!)

This guide shows you how to build the IPA using **GitHub's free servers** (they have Macs in the cloud!) and then sideload with **Sideloadly** on your Windows PC.

---

## How It Works

```
Your Code → GitHub Actions (Mac Server) → IPA File → Sideloadly → Your iPhone
```

---

## Step 1: Create GitHub Repository

1. Go to **github.com** and sign up/login
2. Click the **+** button → **New repository**
3. Name it `vertextrade-ios`
4. Make it **Public**
5. Click **Create repository**

---

## Step 2: Upload the iOS Project

### Option A: Using GitHub Website (Easiest)
1. In your new repo, click **"uploading an existing file"**
2. Drag and drop the ENTIRE `ios` folder contents
3. Wait for upload
4. Click **Commit changes**

### Option B: Using Git (If you have it installed)
```bash
cd C:\Users\otisv\trading-simulator\ios
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/YOUR_USERNAME/vertextrade-ios.git
git push -u origin main
```

---

## Step 3: Trigger the Build

1. Go to your GitHub repository
2. Click **Actions** tab at the top
3. You should see "Build iOS IPA" workflow
4. Click **Run workflow** → **Run workflow**
5. Wait 5-10 minutes for the build to complete

---

## Step 4: Download the IPA

1. After the workflow finishes (green checkmark), click on it
2. Scroll down to **Artifacts**
3. Download **VertexTrade-IPA**
4. Extract the ZIP file - you'll get `VertexTrade.ipa`

---

## Step 5: Install with Sideloadly

### Download Sideloadly:
1. Go to **https://sideloadly.io**
2. Download for Windows
3. Install and open it

### Install the IPA:
1. Connect your iPhone to your PC with USB
2. Open **Sideloadly**
3. Your iPhone should appear in the device dropdown
4. Drag your `VertexTrade.ipa` into Sideloadly (or click to browse)
5. Enter your **Apple ID** email
6. Click **Start**
7. Enter your Apple ID password when prompted
8. Wait for installation to complete

---

## Step 6: Trust the App (On iPhone)

1. On your iPhone, go to **Settings** → **General** → **VPN & Device Management**
2. Find your Apple ID under "Developer App"
3. Tap **Trust**
4. Confirm

---

## Step 7: Launch!

Find **VertexTrade** on your home screen and tap to open! 🎉

---

## Refresh Every 7 Days

With a free Apple ID, the app expires after 7 days. To refresh:

1. Open Sideloadly
2. Connect iPhone
3. Use the same IPA file
4. Click Start again
5. Done!

---

## Troubleshooting

### Build Fails on GitHub
- Make sure all files were uploaded correctly
- Check that the workflow file is in `.github/workflows/build-ios.yml`

### Sideloadly Says "Invalid IPA"
- Try rebuilding on GitHub Actions
- Make sure you downloaded the correct artifact

### App Won't Open
- Make sure you trusted the developer in Settings
- Try reinstalling with Sideloadly

---

## Files to Upload to GitHub

Make sure these are in your repository:

```
vertextrade-ios/ (your repo)
├── .github/
│   └── workflows/
│       └── build-ios.yml      ← Build script
├── VertexTrade/
│   ├── VertexTradeApp.swift
│   ├── ContentView.swift
│   ├── Info.plist
│   ├── Assets.xcassets/
│   └── www/
│       └── index.html
├── VertexTrade.xcodeproj/
│   └── project.pbxproj
├── ExportOptions.plist
└── README.md
```

---

## Summary

| Step | What You Do | Time |
|------|-------------|------|
| 1 | Create GitHub repo | 2 min |
| 2 | Upload files | 5 min |
| 3 | Run GitHub Actions | 10 min (automated) |
| 4 | Download IPA | 1 min |
| 5 | Install with Sideloadly | 3 min |
| 6 | Trust & Launch | 1 min |
| **Total** | | **~22 minutes** |

---

**Ready? Start with Step 1: Create your GitHub repository!** 🚀
