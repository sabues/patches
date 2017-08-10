# Sample data

## Patches

List of patches available for each release

```bash
Directory structure
    |_nnnnn |                       # Release number
            |_ <patch_name_1>.md
            |_ <patch_name_1>.sh    # A number of .sh and/or .patch files for each release
            |_ <patch_name_2>.md    # with matching .md files with patch description
            |_ <patch_name_2>.sh
            |_ ...
            |_ <patch_name_n-1>.md
            |_ <patch_name_n-1>.patch
            |_ <patch_name_n>.md
            |_ <patch_name_n>.patch

    |_yyyyy |
            |_ <patch_name_1>.md
            |_ <patch_name_1>.sh
            |_ <patch_name_2>.md
            |_ <patch_name_2>.sh
            |_ ...
            |_ <patch_name_n-1>.md
            |_ <patch_name_n-1>.patch
            |_ <patch_name_n>.md
            |_ <patch_name_n>.patch
```

## Client code to patch

Clone [this](https://github.com/sabues/auth0-javascript-samples.git) repo to `/modules/auth0-javascript-samples/`

## Apply patches

Manual patch deployment goes like this: Suppose you will install patches for release `12345`

1. Download `make-fake-changes.sh` to `~/`
1. Download `adds-some-text.patch` to `~/`
1. Run `bash make-fake-changes.sh`
1. Change to the module's directory `cd /modules/auth0-javascript-samples/`
1. Apply patch `patch -p 1 --verbose -i ~/adds-some-text.patch`
