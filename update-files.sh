#!/usr/bin/env bash
set -euo pipefail
ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
export ROOT_DIR
python3 - <<'PY'
import json, os
root = os.environ.get('ROOT_DIR', '.')
allowed = {'.png','.jpg','.jpeg','.webp','.gif','.svg','.mp4','.mov','.webm','.m4v','.avi','.mkv'}
files=[]
for dirpath, _, filenames in os.walk(root):
    if '/.git' in dirpath:
        continue
    for name in filenames:
        ext = os.path.splitext(name)[1].lower()
        if ext in allowed:
            full = os.path.join(dirpath, name)
            rel = os.path.relpath(full, root)
            files.append(rel.replace('\\','/'))
files.sort()
with open(os.path.join(root,'files.json'),'w',encoding='utf-8') as f:
    json.dump(files,f,ensure_ascii=False,indent=2)
print(f'Updated files.json with {len(files)} items')
PY
