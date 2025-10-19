### 🚀 meganet Bot Setup Guide

Welcome to the bot setup guide! Follow the steps below to install and configure the bot correctly. This guide is designed for new users, with clear explanations for each step.

📱 **For Mobile Users (Termux):** [View the guide here](https://github.com/MeoMunDep/Guides-for-using-my-script-on-termux)

---

## Table of Contents

1. [System Requirements](#system-requirements)
2. [Installing the Bot](#installing-the-bot)
3. [Bot Configuration](#bot-configuration)
4. [Running the Bot](#running-the-bot)
5. [Updating the Bot](#updating-the-bot)
6. [Contact & Support](#contact--support)

---

## System Requirements

Before running the bot, make sure you have installed:

- **Node.js** (Version: `22.11.0`)
- **npm** (Version: `10.9.0`)
- **Git**
- **Docker** _(Optional)_

📥 **Node.js & npm:** [Download](https://t.me/KeoAirDropFreeNe/257/1462)

📥 **Git:** [Download](https://t.me/KeoAirDropFreeNe/257/60831)

---

## Installing the Bot

<details>
<summary><strong>🔧 Install via Git</strong></summary>

```bash
git clone https://github.com/MeoMunDep/meganet.git
cd meganet
npm install --no-audit --no-fund --prefer-offline --force user-agents axios meo-forkcy-colors meo-forkcy-utils meo-forkcy-proxy meo-forkcy-logger ethers web3 ws
```

</details>

<details>
<summary><strong>🧰 Manual Installation</strong></summary>

1. Download and extract the bot manually.
2. Run the same `npm install` command as above.

</details>

<details>
<summary><strong>🐳 Install via Docker</strong></summary>

```bash
docker build -t meganet-image .
docker run -d --name meganet-container -v $(pwd)/logs:/app/logs meganet-image
```

> 💡 On **Windows CMD**, use `%cd%` instead of `$(pwd)`

</details>

---

## Bot Configuration

<details open>
<summary><strong>📜 1. <code>configs.json</code> - Main Configuration</strong></summary>

```json
{
  "doTasks": false,
  "pingInterval": 15000,
  "saveNewWallets": true,
  "delayEachAccount": [1, 2],
  "referralCodes": ["BG5UKD"],
  "howManyNewWalletsToCreate": 100,
  "howManyAccountsRunInOneTime": 1
}
```

| **Parameter Name**            | **Type**           | **Default / Current** | **Description**                                         |
| ----------------------------- | ------------------ | --------------------- | ------------------------------------------------------- |
| `delayEachAccount`            | `[number, number]` | `[1, 2]`              | Random delay range (in seconds) between accounts        |
| `timeToRestartAllAccounts`    | `number`           | `300`                 | Time (in seconds) before restarting all accounts        |
| `howManyAccountsRunInOneTime` | `number`           | `1`                   | Number of accounts to run in parallel                   |
| `doTasks`                     | `boolean`          | `false`               | Whether to perform main tasks                           |
| `referralCodes`               | `string[]`         | `["BG5UKD"]`          | Optional referral codes                                 |
| `pingInterval`                | `number`           | `15000`               | Interval (in ms) between pings to keep connection alive |
| `saveNewWallets`              | `boolean`          | `true`                | Save newly generated wallets to file                    |
| `howManyNewWalletsToCreate`   | `number`           | `100`                 | Number of new wallets to create automatically           |

</details>

<details>
<summary><strong>💼 2. <code>privateKeys.txt</code> - Wallet List</strong></summary>

📥 [Generate wallets here](https://github.com/MeoMunDep/Automatic-Ultimate-Create-Wallets-for-Airdrop)

```txt
0xabc123...
0xdef456...
...
```

</details>

<details>
<summary><strong>🌐 3. <code>proxies.txt</code> - Proxy List</strong></summary>

📥 [Free proxy from Webshare](https://www.webshare.io/?referral_code=4l5kb3glsce7)

```txt
host:port
http://host:port
socks5://user:pass@host:port
...
```

</details>

---

## Running the Bot

<details open>
<summary><strong>🪟 Run on Windows (.bat)</strong></summary>

1. Double-click `run.bat`
2. It auto-updates, installs dependencies, and runs the bot.

> If it fails, right-click → **Run as Administrator**
> Or run from CMD:

```cmd
run.bat
```

</details>

<details>
<summary><strong>🐧 Run on Linux/macOS (.sh)</strong></summary>

```bash
chmod +x run.sh
./run.sh
```

</details>

<details>
<summary><strong>🐳 Run with Docker</strong></summary>

```bash
docker stop meganet-container 2>/dev/null && docker rm meganet-container 2>/dev/null
docker build -t meganet-image .
docker run -d --name meganet-container -v $(pwd)/logs:/app/logs meganet-image
```

> Later restart:

```bash
docker start meganet-container
```

</details>

---

## Updating the Bot

<details>
<summary><strong>🔄 If installed via Git</strong></summary>

```bash
cd meganet
git pull origin main
npm install
```

</details>

<details>
<summary><strong>🐳 If using Docker</strong></summary>

```bash
docker stop meganet-container
docker rm meganet-container
docker build -t meganet-image .
docker run -d --name meganet-container meganet-image
```

</details>

---

## Contact & Support

- **Support me via** [Referral Link](https://meganet.app/login?refcode=BG5UKD)
- **Donate:** [Donate Here](https://t.me/KeoAirDropFreeNe/312/27801)
- **Contact (Work):** [@MeoMunDep](https://t.me/MeoMunDep)
- **Support Group:** [Join here](https://t.me/KeoAirDropFreeNe)
- **Updates Channel:** [View channel](https://t.me/KeoAirDropFreeNee)
- **YouTube:** [Watch here](https://www.youtube.com/@keoairdropfreene)
- **Instagram:** [Follow](https://www.instagram.com/meomundep)
- **Tiktok:** [Follow](https://www.tiktok.com/@meomundep)

---

⚠️ **Disclaimer**: This code is provided "as is" without any warranties. Use it at your own risk. You are solely responsible for any consequences arising from its use. Redistribution or sale of this code in any form is strictly prohibited.

✨ Thank you for using the bot, hope you earn from my scripts! Good luck! 🚀
