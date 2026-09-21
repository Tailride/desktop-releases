<h1 align="center">Tailride Desktop — Automated Invoice Downloader & Accounting Portal Sync</h1>

<p align="center">
  <strong>Collect PDF invoices and receipts from all your supplier portals and mailboxes automatically in the background.</strong>
</p>

<p align="center">
  <a href="https://github.com/Tailride/desktop-releases/releases/latest"><img src="https://img.shields.io/github/v/release/Tailride/desktop-releases?color=blue&label=Latest%20Release" alt="Latest Release"></a>
  <img src="https://img.shields.io/badge/Platforms-macOS%20%7C%20Windows-informational?style=flat" alt="Platforms: macOS | Windows">
  <img src="https://img.shields.io/badge/Security-OS%20Keychain%20Encrypted-success" alt="Security: OS Keychain Encrypted">
  <img src="https://img.shields.io/badge/Updates-Automated%20Background%20Sync-green" alt="Auto-Update Enabled">
  <a href="https://tailride.so"><img src="https://img.shields.io/badge/Website-tailride.so-orange" alt="Website"></a>
</p>

---

## 📥 Downloads

Download the latest version of Tailride Desktop for your operating system:

| Platform | Architecture | Package Type | Direct Download Link |
|:---|:---|:---|:---|
| **macOS** | Apple Silicon & Intel Universal | `.dmg` Installer | [Download Tailride for macOS (`.dmg`)](https://tailride.so/api/desktop/download?os=mac) |
| **macOS** | Apple Silicon & Intel Universal | `.zip` (Auto-update archive) | [Latest release on GitHub](https://github.com/Tailride/desktop-releases/releases/latest) |
| **Windows** | 64-bit (x64) | Setup Installer (`.exe`) | [Download Tailride for Windows (`.exe`)](https://tailride.so/api/desktop/download?os=windows) |
| **Windows** | 64-bit (x64) | Portable (`.exe`) | [Download Tailride Portable (`.exe`)](https://tailride.so/api/desktop/download?os=windows-portable) |

> 💡 The download links above always resolve to the latest version. **Looking for previous builds or changelogs?** Browse the complete release archive on the [GitHub Releases Page](https://github.com/Tailride/desktop-releases/releases) or read the [release notes on tailride.so](https://tailride.so/desktop/changelog).
>
> 🌐 Product pages: [Desktop app](https://tailride.so/desktop) · [Tailride for Mac](https://tailride.so/desktop/mac) · [Tailride for Windows](https://tailride.so/desktop/windows) · [Invoices from Proton Mail](https://tailride.so/proton-mail) · [Documentation](https://docs.tailride.so/desktop)

---

## ⚡ What is Tailride Desktop?

**Tailride Desktop** is the intelligent, privacy-first desktop application designed for founders, finance teams, accountants, and freelancers. It completely eliminates the monthly chore of logging into dozens of supplier websites (Amazon, Stripe, Google, Microsoft, Adobe, and more) to find and download tax invoices.

Operating silently from your macOS menu bar or Windows system tray, Tailride fetches new invoices on your preferred schedule, verifies amounts and tax details locally, and syncs them directly into your accounting workflows.

### Key Capabilities

- **Automatic Background Collection**: Pick your own schedule — hourly, daily, weekly, monthly, quarterly, or on demand. Tailride wakes up, gathers your latest billing documents, and goes back to sleep.
- **Pre-Configured Supplier Portals**: The same portals as the Tailride browser extension — Amazon (every marketplace, Business and personal), Stripe, AWS, Google Ads, Google Cloud, Microsoft 365, Adobe, Meta Ads, OpenAI, GitHub, Vercel, Uber, Notion, Figma, and more. Full list: [tailride.so/online-portals](https://tailride.so/online-portals).
- **Proton Mail Invoice Extraction (via Proton Mail Bridge)**: Reads your Proton mailbox on your own computer through Proton Mail Bridge, converts HTML email receipts to PDF, skips files that clearly are not invoices, and uploads the likely invoices to Tailride for processing. Requires a paid Proton plan for Bridge. See [tailride.so/proton-mail](https://tailride.so/proton-mail).
- **Local Pre-Check & Factur-X / ZUGFeRD Detection**: Built-in text recognition takes a first look at scanned and photographed receipts on your computer so obvious non-invoices are skipped before upload; the documents that look like invoices are then processed by Tailride. Hybrid e-invoices (Factur-X, ZUGFeRD, XRechnung) are recognised.
- **Bank-Grade Local Security**: All portal credentials and sessions are encrypted using your computer's native secure enclave / OS keychain (macOS Keychain or Windows DPAPI). Zero plaintext storage.
- **Local Folder Ingestion**: Drop historical scans or supplier PDFs into a watched folder to deduplicate and organize them instantly.

---

## 🚀 Getting Started

### Installation on macOS

1. Download **[the latest macOS build (.dmg)](https://tailride.so/api/desktop/download?os=mac)**.
2. Open the downloaded `.dmg` and drag **Tailride** into your **Applications** folder.
3. Launch Tailride from Applications or Spotlight.
4. *(Optional)* If macOS Gatekeeper displays an untrusted developer warning on pre-release builds, right-click `Tailride.app` in Finder, select **Open**, and click **Open** in the dialog (or allow in *System Settings > Privacy & Security*).

### Installation on Windows

1. Download **[the latest Windows installer (.exe)](https://tailride.so/api/desktop/download?os=windows)**.
2. Run the installer and choose whether to create desktop and Start menu shortcuts.
3. Tailride will launch and minimize to the notification tray.

---

## 🔄 How Auto-Updates Work


- **Silent Background Check**: Tailride checks this public repository (`Tailride/desktop-releases`) every 6 hours for new releases.
- **Instant Notification**: When a new version is detected, it downloads silently in the background and notifies you via native OS notifications and an in-app banner.
- **One-Click Restart**: Click **Restart to update** in the menu bar tray or in **Settings > About** to apply the update immediately.
- **Public & Transparent**: Because this repository is public, updates are distributed transparently without requiring API keys or user tracking.

---

## 🔒 Privacy & Security First

| Concern | How Tailride Protects You |
|:---|:---|
| **Portal Passwords** | Encrypted locally via macOS Keychain or Windows DPAPI (`node-keytar` / `safeStorage`). Passwords are never transmitted to Tailride servers. |
| **Web Sessions** | Isolated per-profile partitions. Cookie jars and active sessions stay entirely on your local machine. |
| **Document Processing** | Optical Character Recognition (OCR) and PDF parsing run locally on your CPU/GPU. |
| **Compliance** | GDPR-compliant, privacy-first architecture with zero third-party telemetry in desktop core operations. |

---

## 🛠 Supported Accounting Integrations

Collected documents and metadata can be organized locally into your chosen downloads directory or synchronized directly with your accounting software via the Tailride platform:

- **Xero**
- **QuickBooks Online**
- **sevdesk**
- **Holded**
- **e-conomic**
- **Sage Business Cloud**
- **Lexware Office**
- **Custom Webhooks / CSV / PDF Folders**

---

## 📄 License & Community

- **Official Website**: [https://tailride.so](https://tailride.so)
- **Support & Issues**: [Report an issue or request a portal recipe](https://github.com/Tailride/desktop-releases/issues)
- **Changelog**: See the [Releases](https://github.com/Tailride/desktop-releases/releases) tab for detailed release notes with each version.

---

<p align="center">
  <sub>Copyright © 2026 Tailride. All rights reserved.</sub>
</p>
