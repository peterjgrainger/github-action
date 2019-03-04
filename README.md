# Danger Github Action

Run danger as a github action.  All arguments passed to the action will be passed directly to `danger`

## Usage

Add file `main.workflow` to folder `.github`.  The workflow trigger **must** be `pull_request`

```bash
workflow "Test Action Works" {
  on = "pull_request"
  resolves = ["Run Danger"]
}

action "Run Danger" {
  uses = "danger/github-action@master"
  secrets = ["GITHUB_TOKEN"]
}
```