# VMware Fusion Alfred Workflow

This project borrows very heavily from the **[original](https://github.com/molawson/alfred-vmware-fusion)** by Mo Lawson, and is an extension of his existing work.
The additional functionality included here allows VMs to be started in headless or GUI mode, allows users to perform a hard stop (in addition to the stop/guest shutdown), and additionally includes hard and soft reset of VMs.

## Usage

Currently, the following commands are supported:

![supported commands](/images/commands.jpg)

### Start

Start any VM.

![vm start](/images/vm_start.jpg)

_Use the command (⌘) key as a modifier to start in headless mode_
![vm start headless](/images/vm_start_headless.jpg)

### Stop

Shutdown any running VM.

![vm stop](/images/vm_stop.jpg)

_Use the command (⌘) key as a modifier to perform a hard stop_
![vm stop hard](/images/vm_stop_hard.jpg)


### Reset

Reset any running VM.

![vm reset](/images/vm_reset.jpg)

_Use the command (⌘) key as a modifier to perform a hard reset_
![vm reset hard](/images/vm_reset_hard.jpg)

### Suspend

Suspend any running VM.

![vm suspend](/images/vm_suspend.jpg)

### List

List all running VMs.

![vm list running](/images/vm_list.jpg)


## Installation

Once you have Alfred installed, along with the [Powerpack](http://www.alfredapp.com/powerpack/), you can download the [latest release](https://github.com/sysophost/alfred-vmware-fusion/releases) of the workflow file, and double click it to install.

### Virtual Machine location

For the `vm start` command to work, the workflow needs to know where you keep your VMware images. This is configured in the environment variables of the workflow.
For some reason this has to be the absolute path to the folder, so using `/Users/<username>/Virtual Machines` instead of `~/Virtual Machines`.

_Environment variables can be configured by pressing this button (in the top right corner):_

![environment variables](/images/env_var_button.jpg)

**NB:** The workflow _does not_ search directories recursively (i.e. look in subdirectories). It simply looks for files ending in ".vmware" in the directories listed.

## Assumptions

### VMware Fusion location

The workflow assumes that you have `VMware Fusion.app` installed in the default location, `/Applications`. Since the `vmrun` tool lives withing the app package, it uses this default to issue commands.

If you have it installed somewhere else, you'll need to edit the workflow script. To do that, in Alfred preferences, find the VMware Fusion workflow and double click on any of the squares within the workflow. Near the bottom right of the window that appears, there's a button that says "Open workflow folder."  Click that and you're looking for the `vmware/alfred.rb` file. Change the following line to point to your `vmrun` location:
```ruby
@vmrun = '/Applications/VMware Fusion.app/Contents/Library/vmrun'
```
