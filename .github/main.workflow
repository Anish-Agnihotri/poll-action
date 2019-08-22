workflow "Poll" {
  on = "issue_comment"
  resolves = "poll-action"
}

action "poll-action" {
  uses = "docker://anish-agnihotri/poll-action:latest"
  secrets = ["GITHUB_TOKEN"]
}
