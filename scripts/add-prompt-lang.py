import os, glob

def process(content):
    lines = content.split('\n')
    result = []
    in_fence = False
    for line in lines:
        stripped = line.rstrip()
        if stripped == '```':
            if not in_fence:
                result.append('```prompt')
                in_fence = True
            else:
                result.append('```')
                in_fence = False
        elif stripped.startswith('```') and not in_fence:
            # opening fence with a language specifier already — leave it, just track state
            in_fence = True
            result.append(line)
        elif stripped == '```' and in_fence:
            in_fence = False
            result.append('```')
        else:
            result.append(line)
    return '\n'.join(result)

files = glob.glob('/Users/kangs/github/tamil-prompt-standard/prompts/**/*.md', recursive=True)
changed = []
for path in files:
    with open(path, 'r', encoding='utf-8') as f:
        original = f.read()
    updated = process(original)
    if updated != original:
        with open(path, 'w', encoding='utf-8') as f:
            f.write(updated)
        changed.append(path)

print(f"Updated {len(changed)} files:")
for p in sorted(changed):
    print(" ", p.replace('/Users/kangs/github/tamil-prompt-standard/', ''))
