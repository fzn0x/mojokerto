# Mojokerto ✨

Perl Fullstack Web Framework

This is **NOT** _abstraction abstraction abstraction_ framework but guidelines framework on how to build a modern requirements fullstack web with Perl.

## Examples

- How to Pretty Perl syntax
- `watch` mode
- Simple Routing with Mojolicious Lite
- MVC with HTMX
- Generate Swagger Docs
- Scheduler
- .env
- Rate Limiting
- Access to a Database
- How to Deploy
  _More in the future..._

## FAQs

> Cannot install modules in Git Bash (Windows)

Git itself is written primarily in C, but it does utilize various scripting languages, including Perl, for certain operations. On Windows, when you install Git, it often comes bundled with a minimal set of Unix-like tools, including Perl, to support its functionality. This bundled Perl is not Strawberry Perl, which is a more complete Perl environment for Windows.

This is known issue for Git Bash, if you're using Strawberry Perl, kindly specify the path everytime you run the server or set it globally.

```sh
# default port is 3000
PATH="/c/Strawberry/perl/bin:$PATH" perl ./mojo.pl daemon
```

## LICENSE

MIT
