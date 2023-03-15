#!/usr/bin/env python
# coding: utf-8

from pathlib import Path
import subprocess
from datetime import datetime

lily = Path(r"c:\Program Files (x86)\LilyPond\usr\bin\lilypond.exe")

sources = Path("lilypond")
for f in sources.glob("*"):
    if not (f.is_file() and f.suffix == ".ly"):
        continue
    dest = Path(f"{f.stem}")
    pdf = dest / f"{f.stem}-tutti.pdf"
    has_pdf = pdf.exists()
    update = not has_pdf
    if has_pdf:
        pdf_date = datetime.fromtimestamp(pdf.stat().st_mtime)
        ly_date = datetime.fromtimestamp(f.stat().st_mtime)
        if pdf_date < ly_date:
            update = True
    if update:
        print(f"{f} to be compiled!")
        process = subprocess.run([str(lily), '-dno-point-and-click', str(f)],
                                 shell=True,
                                 stdout=subprocess.PIPE, 
                                 universal_newlines=True)
        for o in Path(".").glob('*'):
            if o.is_file():
                suf = o.suffix
                if suf not in ['.pdf', '.mid']:
                    continue
                stem = o.stem.replace('--', '-')
                dest.mkdir(exist_ok=True)
                o.replace(dest / f"{stem}{suf}")

