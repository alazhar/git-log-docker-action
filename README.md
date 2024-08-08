# Git Log Docker Action

git log command with docker.

## Inputs

### `start`

**Required** Start git commit object (e.g. SHA, tag, branch name) in revision range (start..end).

### `end`

**Required** End git commit object (e.g. SHA, tag, branch name) in revision range (start..end).

## Outputs

### `log`

Git log output as environment variable LOG.

## Example

```yml
name: Gitea Actions Schedule
run-name: ${{ gitea.actor }} is testing out Gitea Actions schedule
on: push

jobs:
  job1:
    runs-on: ubuntu-latest
    steps:
      - name: Inject git log into environment
        id: git-log
        uses: alazhar/git-log-docker-action@main
        with:
          start: ${{ github.event.pull_request.base.sha }}
          end: ${{ github.event.pull_request.head.sha }}
      - name: Get output
        run: echo "${{ steps.git-log.outputs.log }}"
```
