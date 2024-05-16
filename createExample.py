import pandas as pd

from autokattis import Kattis

kt = Kattis('user', 'pass')

solved = kt.problems(show_partial=False).to_df()
columns_to_drop = ['fastest', 'acc', 'shortest', 'category', 'total']
existing_columns_to_drop = [col for col in columns_to_drop if col in solved.columns]

solved = solved.drop(labels=existing_columns_to_drop, axis=1, errors='ignore')

# create the read me
to_md = solved.to_markdown(index=False)
path = 'README.md'

with open('head.md', "r", encoding="utf-8") as file1:
    header = file1.read()

with open(path, "w", encoding="utf-8") as file:
    file.write(header + "\n")

with open(path, "a", encoding="utf-8") as file:
    file.write(to_md + "\n")

#creating the files in AutoFiles
for id in solved['id']:
    kt.downloadSub(id, 'AllFiles')

#other stuff
# print(solved[['link']])
# print(kt.downloadlink('problemidhere'))
