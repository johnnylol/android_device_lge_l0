**Work in progress for the LG Motion 4G.

**Thanks to:
	
	985PatKicK for his repo(s) in which this is forked from.

    hroark13 for posting his device tree.

	BobZhome for his time & work on this project.

	Dm47021 for his assistance.



HOW-TO BUILD:
=============

**This short guide assumes you're on Ubuntu 11.04 or above**

Getting the (right) source
--------------------------

First, we need to create directories for the build (system can be whatever you want to name your working directory):

    $ mkdir -p ~/bin

    $ mkdir -p ~/android/system

Now we'll need repo. Let's download it and make it executable:

    $ curl https://dl-ssl.google.com/dl/googlesource/git-repo/repo > ~/bin/repo

    $ chmod a+x ~/bin/repo

Log out and back in so the changes take effect.

Now initialized the repository and pull the source (with my repos attached):

    $ cd ~/android/system/
    
    $ repo init -u git://github.com/CyanogenMod/android.git -b cm-10.1
    
    $ repo sync

Note: Depending on your connection, this might take awhile.

Getting needed repos for the LG Motion (l0)
	
	$ cd ~/android/system/device/

	$ mkdir lge

	$ cd lge

	$ git clone https://github.com/LGLX/android_device_lge_l0.git -b cm10.1_Osiris l0

	$ git clone https://github.com/hroark13/hardware_qcom_media-legacy.git -b master hardware/qcom/media-legacy

	$ git clone https://github.com/hroark13/hardware_qcom_display-legacy.git -b master hardware/qcom/display-legacy


Getting kernel source (OPTIONAL)
--------------------------------

Then cd to the kernel directory (custom kernels unable to be used at this time due to locked bootloader, but setup for them just in case):

	$ mkdir ~/android/system/kernel (if it doesnt exist already!)

	$ cd ~/android/system/kernel

	$ mkdir lge

	$ cd ~/android/system/kernel/lge

	$ git clone https://github.com/LGLX/kernel_lge_l0.git l0

Extract necessary binaries and proprietary files 
------------------------------------------------

We will need to reuse some proprietary files from CM10 ROM (This step is not needed at this point! WIP!):

    $ cd
    
    $ cd ~/android/system/device/lge/l0
    
    $ ./extract-files.sh

or place a copy of a stock ROM zip or previous CM build in device/lge/l0

	$ ./unzip-files.sh name-of-zip.zip

Building CM10
-------------
Once thats done you can start compiling.

Follow the aosp instructions on setting up the build environment. - http://source.android.com/source/download.html

When the environment is setup, we need to grab a copy of Term.apk. This is necessary to build CM10.

    $ cd ~/android/system/vendor/cm

    $ ./get-prebuilts

Now, we build (system being your work directory):

    $ cd ~/android/system

To build for the LG Motion 4G:
    
    $ . build/envsetup.sh && brunch l0


Installing CM10
---------------
If the build was successful, you can now take the update zip found in out/target/product/l0/ and flash using a custom recovery. Make sure to grab the latest Gapps to complete the experience.

When you want to rebuild with new changes to the BoardConfig.mk or after syncing to the latest CM src make sure to do the following before you recompile.

    $ make clobber



