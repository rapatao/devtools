# DevTools

Created to provide a basic, extensible and easily development environment initially for Cygwin.

## Installation

The package must be installed in the folder **/usr/local/devtools**

```bash
git clone https://github.com/rascorp/devtools.git
```

## Configuration

Just execute the **config-devtools.sh** to configure the enviroment.

```bash
/usr/local/devtools/bin/config-devtools.sh
```

## Customization

The customizations follow the convention of "aliases", "configuration" and "binaries".

If the customization should be available for all users, the file needs to be put in folder **/usr/local/etc/devtools/**
and if the customization should be availabe only for a specific user, the file must be put in the folder **_${HOME}_/.devtools/**.

The file must be follow the specific pattern for each file type:

* **Aliases**: Pattern: <filename>**.alias**
* **Configurations**: Pattern: <filename>**.config**

## Extensions

The thirdparty scripts that sould be disponible under Devtools must be put in the followed directories:

* For all users: **/usr/local/bin/devtools/**
* Specific user: **_${HOME}_/.devtools/bin/**