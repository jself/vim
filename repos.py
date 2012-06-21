#!/usr/bin/env python2

import pbs
from pbs import git, ls, cat, grep, test
import json

def _mkname(name):
    return name[name.rfind('/')+1:].replace('.git', '').replace('.vim', '')

def load(name, path, repos):
    try:
        test('-d', path)
    except pbs.ErrorReturnCode:
        git('submodule', 'add', repos, path)


def add():
    struct = json.load(open('repos.txt'))

    for bundle in struct['bundles']:
        name = _mkname(bundle)
        load(name, 'bundle/' + name, bundle)

    for bundle in struct['ipi']:
        name = _mkname(bundle)
        load(name, 'ipi/' + name, bundle)

if __name__ == '__main__':
    add()
