a for Repo trying to identify a potential bug in Phoenix

---

I believe this commit introduced a bug around generating a new Phoenix application: https://github.com/phoenixframework/phoenix/commit/1ec8f3bce5d3caec1dddac6590e99ab506c6d998

I followed these steps to create the repos in this Repo:
```
git clone https://github.com/phoenixframework/phoenix.git
cd phoenix
# install dependencies

# Checkout to commit that I believe caused the issue:
git checkout 1ec8f3bce5d3caec1dddac6590e99ab506c6d998
cd installer
mix phoenix.new ~/elixir/bug-repos/hello_phoenix_bug_commit
cd hello_phoenix_bug_commit
# Edit config/devs.exs to configure database, and make port configurable
mix ecto.create
PORT=3001 mix phoenix.server

cd phoenix

# Checkout to commit right before where I think the bug was introduced
git checkout deaf4a13b5ed2aa990527252802dcf74dbb8e236
cd installer
mix phoenix.new ~/elixir/bug-repos/hello_phoenix_1_commit_before_bug_commit
cd hello_phoenix_1_commit_before_bug_commit
# Edit config/devs.exs to configure database, and make port configurable
mix ecto.create
mix PORT=3000 phoenix.server
```

### PORT: 3001
on the bug commit

<p align="center">
  <img src="/assets/1ec8f3bce5d3caec1dddac6590e99ab506c6d998.png" alt="Bug Commit">
</p>

### PORT: 3000
before the commit

<p align="center">
  <img src="/assets/deaf4a13b5ed2aa990527252802dcf74dbb8e236.png" alt="Before Bug Commit">
</p>
