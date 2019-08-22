workflow "Poll" {
  on = "issue_comment"
  resolves = "poll-action"
}

action "poll-action" {
  uses = "anish-agnihotri/poll-action@master"
  secrets = ["GITHUB_TOKEN"]
}
