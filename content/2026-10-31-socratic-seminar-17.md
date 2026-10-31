+++
title = "Socratic Seminar #17"
template = "post.html"
[extra]
+++

### Location

Block B, AUJ Complex, CBD Abuja

[Map](https://maps.app.goo.gl/eP2YgGgxkhDTn5Ts8)

---

### Agenda

### Announcements

We are excited to introduce our seventeenth [Socratic Seminar](/about)! A special thank you to our sponsor [BTrust](https://www.btrust.tech/) for food, refreshments, and [Bitnob](https://bitnob.com) for hosting the meetup.

### Reminders

* We prefer no photos and no videos during the event
* [Chatham House Rule](https://www.chathamhouse.org/about-us/chatham-house-rule)
* Leave the meeting space as clean as you found it
* Suggest topics for the next Socratic Seminar! by creating an issue on our repo [BitDevs Repo](https://github.com/BitDevsAbuja/bitdevsabuja.org/issues)
* [Where to find topics?](/about/find-topics)

---

### Security

MC: nully0x

* [CVE-2026-117346 - Undo file overflow under extreme conditions](https://bitcoincore.org/en/2026/10/28/disclose-undo-overflow/)
* [CVE-2026-117349 - Slow unbounded memory growth on paused pre-BIP31 peers](https://bitcoincore.org/en/2026/10/28/disclose-fpausesend-oom/)
* [CVE-2026-117350 - Unbounded memory growth through TCP urgent data on non-Linux systems](https://bitcoincore.org/en/2026/10/28/disclose-tcp-oom/)

---

### General News

MC: nully0x

* [Bitcoin Core 32.1 Released](https://bitcoincore.org/bin/bitcoin-core-32.1/)

---

### Mailing List Posts

MC: nully0x

* [Bitcoin Core Security Policy Update](https://groups.google.com/g/bitcoindev/c/70VSp_ARD5Q)

---

### Delving Bitcoin Posts

MC: nully0x

* [Silent Payments for Multiparty Wallets](https://delvingbitcoin.org/t/silent-payments-for-multiparty-wallets/2960)
* [CLN: Self-Referential Channel Announcement DoS Disclosure](https://delvingbitcoin.org/t/cln-self-referential-channel-announcement-dos-disclosure/2974)
* [Multiplication in Tapscript Today: 371 Bytes, No Soft Fork](https://delvingbitcoin.org/t/multiplication-in-tapscript-today-371-bytes-no-soft-fork/3010)

---

### Bitcoin Core

MC: nully0x

* [policy: Allow non-standard scripts with -acceptnonstdtxn=1 (test nets only)](https://github.com/bitcoin/bitcoin/pull/29843)
* [net: make orphan reconsideration more granular](https://github.com/bitcoin/bitcoin/pull/36594)

---

### Demo: Signet Sandbox

MC: nully0x

* One call provisions an isolated signet chain: bitcoind, a BIP325 block signer, and optional electrs, explorer, faucet, and LND.
* The call returns a connection bundle with every endpoint, macaroon, and TLS certificate.
* Three LND nodes on one private signet: fund each node, peer them, open a channel, pay an invoice, and close the channel.
* The failure path: what happens when a channel will not close.
* Teardown: a TTL deletes the environment, and the reaper takes the namespace with it.
* Discussion: regtest versus signet, and what an isolated chain cannot reproduce.