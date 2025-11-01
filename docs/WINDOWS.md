## Windows notes

If you see `$'': command not found` or `invalid option`, your shell script has CRLF line endings.

### Fix line endings
```bash
# In repo root
git config core.autocrlf false
git rm --cached -r .
git reset --hard
```
This repo ships with `.gitattributes` to enforce LF for `*.sh`.

### Docker Desktop + WSL 2
1. Install Docker Desktop (Linux engine)
2. Settings → Resources → WSL Integration → enable your distro
3. Ensure `docker` works in PowerShell or WSL: `docker version`

### PowerShell runner (no bash)
Run: `powershell -ExecutionPolicy Bypass -File scripts/run.ps1`
