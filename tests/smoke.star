LYCHEE = "lychee.exe" if ocx.platform()["os"] == "windows" else "lychee"

r_version = ocx.run(LYCHEE, "--version")
expect.ok(r_version)
expect.eq(r_version.exit_code, 0)
expect.contains(r_version.stdout, "lychee")

r_help = ocx.run(LYCHEE, "--help")
expect.eq(r_help.exit_code, 0)
expect.contains(r_help.stdout, "link checker")
