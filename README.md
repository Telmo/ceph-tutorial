## Play With Ceph

This is a little collection of scripts and things so you can go through the [quick start](http://ceph.com/docs/master/start/quick-ceph-deploy/) tutorial and set up a little Ceph cluster on your local machine with [Vagrant](http://vagrantup.com).

It does a lot of the things from the [preflight](http://ceph.com/docs/master/start/quick-start-preflight/) stuff for you, except install ceph-deploy on the admin node.  

To get started:

* Clone this repo locally.
* Make sure you have [Vagrant](http://vagrantup.com) installed.
* cd to this directory and run `vagrant up`
* Once it's done running through everything, you need to ssh to the admin node: `vagrant ssh admin`
* `sudo apt-get install ceph-deploy -y`
* Now go through the [quick start](http://ceph.com/docs/master/start/quick-ceph-deploy/) tutorial and see what you think of ceph.

I did this just to see what ceph is all about and am certainly not an expert in it.  This is provided just in case you want to save yourself the trouble.  Also, the keys were generated just for this project so they're not special in any way.  You're free to replace them with your own, but hey, this thing is disposable, so who cares, right?