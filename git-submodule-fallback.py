#!/usr/bin/env python3

import subprocess

def main():
    section = 4
    with open('_gitmodules', 'r', newline='\n') as file:
        for line in file:
            name, path, url, branch = line.split(',')
            args = ['git', 'submodule', 'add', '--name', '{}'.format(name), '--branch', '{}'.format(branch).rstrip('\n'), '{}'.format(url), '{}'.format(path)]
            subprocess.run(args=args)
            # print(args)


if __name__ == '__main__':
    main()