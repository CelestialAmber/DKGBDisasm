# Linux

Dependencies:

	sudo apt-get install make gcc bison git
	sudo easy_install pip

The assembler used is [**rgbds**](https://github.com/gbdev/rgbds).

	git clone https://github.com/gbdev/rgbds
	cd rgbds
	sudo mkdir -p /usr/local/man/man{1,7}
	sudo make install
	cd ..
	rm -rf rgbds

Set up the repository.

	git clone https://github.com/CelestialAmber/DKGBDisasm
	cd DKGBDisasm

To build `donkeykong.gb`:

	make

This will take a few seconds the first time you build because it needs to process all of the graphics.

To remove all generated files by the build process:

	make clean

To compare the built `donkeykong.gb` to the original ROM:

	make compare


# OS X

In the shell, run:

	xcode-select --install
	
Install [**Homebrew**](https://brew.sh/). Follow the official instructions.

Then, run this command:
	
	brew install rgbds gcc git make

Then set up the repository. In the **terminal**:

	git clone https://github.com/CelestialAmber/DKGBDisasm.git
	cd DKGBDisasm

To build `donkeykong.gb`:

	make


# Windows

To build on Windows, install [**Cygwin**](http://cygwin.com/install.html) with the default settings.

Dependencies are downloaded in the installer rather than the command line.
Select the following packages:
* make
* git
* gcc-core

The latest compatible version of **rgbds** is  [**0.5.1**](https://github.com/gbdev/rgbds/releases/download/v0.5.1/rgbds-0.5.1-win64.zip). To install, put each of the files in the download in `C:\cygwin\usr\local\bin`.

Then set up the repository. In the **Cygwin terminal**:

	git clone https://github.com/CelestialAmber/DKGBDisasm.git
	cd DKGBDisasm

To build `donkeykong.gb`:

	make
