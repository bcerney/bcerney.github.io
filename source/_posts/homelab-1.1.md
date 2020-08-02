title: Homelab 1.1
tags:
- homelab
- rpi
- docker
- github
- unifi
categories:
- Development
author: ''
date: 2020-08-01
---

<!-- TODO: add captions -->
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6">
            <img src="/2020/08/01/homelab-1.1/homelab-1.1.svg" alt="">
        </div>
        <div class="col-lg-6">
            <img src="/2020/08/01/homelab-1.1/pi-cluster-2.jpg" alt="">
        </div>
    </div>
</div>

Throughout the summer I've made a few homelab updates:

- Replaced the [Raspberry Pi 3 Model B+](https://www.raspberrypi.org/products/raspberry-pi-3-model-b-plus/) with a [RPi 3 Model B](https://www.raspberrypi.org/products/raspberry-pi-3-model-b/) running some [Docker](https://docs.nextcloudpi.com/en/how-to-get-started-with-ncp-docker/) containers: [Pi-hole](https://github.com/pi-hole/docker-pi-hole/), and [a UniFi controller](https://tynick.com/blog/09-08-2019/unifi-controller-with-raspberry-pi-and-docker/) for my [UniFi UAP-AC-Lite](https://www.ui.com/unifi/unifi-ap-ac-lite/). I plan to repurpose the RPi 3 B+ for some sort of portable gadget project in the future.
- Added a [RPi 4 Model B 4GB](https://www.raspberrypi.org/products/raspberry-pi-4-model-b/specifications/) running [NextCloudPi](https://ownyourbits.com/nextcloudpi/) via Docker for local cloud storage. I've also attached a [WD Elements 2TB hard drive](https://shop.westerndigital.com/products/portable-drives/wd-elements-portable-usb-3-0-hdd#WDBU6Y0020BBK-WESN) to increase storage capacity and reduce R/W of the RPi's microSD.

If your interested in the setup process, I've compiled my notes in a [GitHub repository](https://github.com/bcerney/rpi-exploration). I mounted the RPi's in [a cluster case](https://www.amazon.com/gp/product/B07CTG5N3V/), with intentions of adding to it in the future.
