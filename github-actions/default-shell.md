---
title: Github Actions Don't Run in Bash By Default
date: 2024-11-11
---
# Github Actions Don't Run in Bash By Default

Github actions needs this in the workflow template to make the pipeline jobs run in bash. The default is POSIX shell.

```yaml
defaults:
  run:
    shell: bash 
```

Got caught out by this recently. Had a bash script which was running without errors but wasn't behaving as expected for an if statement like this one -

```bash
if [[ "$TARGET_BRANCH" ==  "master" &&  "$SOURCE_BRANCH" != "development" ]]; then
    echo "Target branch is \`master\` and source branch is not \`development\`"
fi
```

`[[` is a bash only feature not supported by shell. 