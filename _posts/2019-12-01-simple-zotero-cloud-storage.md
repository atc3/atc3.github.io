---
layout: post
title: Simple Zotero Cloud Storage Integration
date: '2019-12-01'
categories:
- research
tags:
- guide
---

<a class="logo-link" href="https://www.zotero.org/" style="display:flex;flex-direction:row;align-items:center;">
<img src="/images/zotero_icon.png" width="90" style="margin-right:15px"/>
<img src="/images/zotero_logo.png" width="220" />
</a>

<br />
[Zotero](https://www.zotero.org/) is a fantastic [non-profit](https://www.zotero.org/support/privacy), [open source](https://github.com/zotero) paper and reference manager with [a ton of cool features](https://www.zotero.org/why). I mostly use it to organize and annotate papers, but it can be used for a lot, lot more! 

While Zotero provides integrated library storage as part of the standalone application, I quickly overran the 300MB free tier, and didn't want to worry about data quotas when I was adding papers to my library. (Note, you can still [support Zotero in other ways](https://www.zotero.org/getinvolved/).) Instead of storing paper files with Zotero, you can easily connect Zotero with a cloud storage provider like [Google Drive](https://www.google.com/drive/), [Dropbox](https://www.dropbox.com/), [Box](https://www.box.com/home), [Sync](https://www.sync.com/) etc.

There's [a great guide on doing this](https://www.researchgate.net/publication/325828616_Tutorial_The_Best_Reference_Manager_Setup_Zotero_ZotFile_Cloud_Storage) with the [Zotfile plugin](http://zotfile.com/) for Zotero, and while that guide adds more functionality I found the following steps to be a simpler and still effective way of integrating Zotero with cloud storage.

**1. Create an account on [zotero.org](https://www.zotero.org/user/register)**

This is free. Note that if syncing libraries between devices, Zotero will collect data as part of the syncing process, but [has no financial incentive to sell your data](https://www.zotero.org/support/privacy).

**2. Download Zotero standalone**

You can download the Zotero desktop app here: [https://www.zotero.org/download/](https://www.zotero.org/download/)

**3. Find the Zotero data directory**

On the top bar, go to Zotero → Preferences, and in the "Advanced" tab, find the "Data Directory Location". This is where your PDFs are normally stored and linked to through Zotero.

<img src="/images/zotero_advanced_settings.png" width="300" />

**4. Symlink the data directory with cloud storage**

This requires that your cloud storage provider has filesystem integration - which nearly all do. I'm using [Google Drive File Stream](https://support.google.com/a/answer/7491144?hl=en) which mounts my cloud storage at `/Volumes/GoogleDrive/`. A service like Dropbox could link its sync folder in `/Users/<user>/Dropbox`, for example. Create a folder in the synced directory for storing PDFs.

```bash
mkdir "/Volumes/GoogleDrive/My Drive/papers"
```

In the data directory folder, make a backup copy of your `storage/` directory, and then delete the original directory. Then, make a symbolic link (symlink) to the synced directory you created earlier.

```bash
# Remove the original storage/ folder. Make a backup first!!!
rm -r /Users/chena/Zotero/storage
# Make a symlink to the folder in the synced directory
ln -s "/Volumes/GoogleDrive/My Drive/papers" "/Users/chena/Zotero/storage"
```

On Windows, the above syntax will be different:

```powershell
# Create a "directory junction" - windows version of a symlink
mklink /J "G:\My Drive\papers" "C:\Users\chena\Zotero\storage"
```

**5. Copy original data to the synced folder**

If you already had files stored in the original `storage/` directory, then move the contents of that directory back into the new `storage/` directory link, which now points to the synced folder. 

<img src="/images/zotero_symlinked.png" width="300" />

Now our `storage/` folder points to a synced folder, backed up by our cloud storage provider. (On Mac, that little arrow under the folder indicates the folder is a symlink)

**6. Enable Zotero Sync**

Go to Zotero → Preferences, and in the "Sync" tab, sign into your Zotero account. Enable "Automatic Sync" if you want changes to automatically push to their server. By disabling the "File Syncing" options, we are no longer uploading PDFs to Zotero's servers, and instead using our symlinked storage folder to carry files across devices.

<img src="/images/zotero_sync.png" width="300" />

That's it! Now you can store unlimited papers (or whatever your data quota is on your cloud storage provider) across multiple devices.

Thanks to the Zotero team for creating a great reference management solution. It's great.
