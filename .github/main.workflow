workflow "Poll" {
  on = "issue_comment"
  resolves = "Poll"
}

action "Poll" {
  uses = "docker://anish-agnihotri/poll-action:latest"
  secrets = ["GITHUB_TOKEN"]
}
