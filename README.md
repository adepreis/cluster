# cluster

**[WIP]**

QML automotive digital gauge cluster made for webOS OSE.

![VM device screenshot](./App_Screenshot.png)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development purpose.

### Dependencies

Below are the tools and libraries (and their minimum versions) required to build sample program:

- qmake (??)

### Prerequisites

Things you need to install the project :

- [webOS CLI]()
- ["webOS device"]()

### Running

Here are some instructions on how to get the development env running.

First, clone this repository with the following command :

	$ git clone https://github.com/adepreis/cluster

Then, package the app as an IPK file using :

	$ ares-package ./cluster

This should generate a package (IPK file). The created _com.github.adepreis.cluster_<...>.ipk_ file has now to be installed on your targeted device thanks to the following command :

	$ ares-install -d <DEVICE_NAME> com.github.adepreis.cluster_<...>.ipk

with _DEVICE_NAME_ your own testing device (see `ares-setup-device` command).

Finally, "for running app on device", ...

	$ ares-launch -d <DEVICE_NAME> com.github.adepreis.cluster

---

### How it works

...
