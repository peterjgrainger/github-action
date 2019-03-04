workflow "Run Danger" {
  on = "push"
  resolves = ["docker://petergrainger/danger-action"]
}

action "docker://petergrainger/danger-action" {
  uses = "docker://petergrainger/danger-action"
  secrets = ["GITHUB_TOKEN"]
}
