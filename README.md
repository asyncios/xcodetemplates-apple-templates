# iOS - MVP + Clean Architecture

This is a repository that contains all the templates necessary for creating projects under the architecture

The templates are as follows:
* `Clean` folder:
  * `Clean Scene`: Create a complete scene with the 6 files required (ViewController, Interactor, Presenter, Worker, Router and Models)
  * `Clean Test`: Create the classes of tests and spies necessary to be able to do the unit tests of the scene

* `MVP` folder:
  * `MVP Scene`: Create a complete scene with the 3 files required (ViewController, Contract, Presenter)
  * `MVP Test`: Create the classes of tests and spies necessary to be able to do the unit tests of the scene

* `Base Application`: Create an entire project under the MVP + Clean architecture. The project includes swiftlint, cocoadpods, 3 schemes (dev, QA, and Release) and an example demo module for developers. It also includes unit tests and can be runnable only in dev scheme.

## Requirements

- iOS 12.1+
- Xcode 13.0+

## Installation

Clone this repo and excute sh install.

```bash
sh install
```

## Usage

Just run the App on the XCode, new->project (BaseApplication) or new->File (MVP Scene, Clean Scene or Tests).
