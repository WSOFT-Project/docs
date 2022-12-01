import glob
import os
import sys
import re
import datetime

COL_NUM = 3

def get_thumbnail_element(dir, index_filename='index.md',pages_filename='.pages'):
    html = '<div class="container-fluid">\n'
    dir_title=read_property(f'docs/{dir}/{pages_filename}','title')
    filenames = glob.glob(f'docs/{dir}/*.md')
    for i, filename in enumerate(filenames):
        if not filename.endswith(index_filename):
            title = read_property(filename,'title')
            summary = read_property(filename,'summary')
            date= read_property(filename,'date')
            author = read_property(filename,'author')
            content_dir = filename.lstrip('docs/').rstrip('.md')
            html += '    <div class="row mb-3 card">\n'
            card = get_card_element(title, content_dir,summary,date,author,dir_title)
            html += card
            html += '    </div>\n'
    html += '</div>'

    return html

def read_property(filename,key):
    """記事や.pagesファイルからプロパティを読みだす関数
    
    filename=ファイル名、key=プロパティの名前
    """
    with open(filename, "r", encoding="utf-8") as f:
        search=re.search(key+'\ *:\ *(.+)*\n*', f.read())
        if search != None:
            return search.group(1)
    return ''

def get_card_element(title, dir,summary,date,author,dir_title):
    card = ''
    card += f'    <div class="card-header">{dir_title}</div>\n'
    card += f'      <div class="card-body">\n'
    card += f'        <h5 class="card-title">{title}</h5>\n'
    card += f'        <p class="card-text">{summary}</p>\n'
    card += f'        <a href="/{dir}/" class="btn btn-primary"><i class="bi bi-file-earmark-richtext"></i>この記事を読む</a>\n'
    card += f'      </div>\n'
    card += f'    <div class="card-footer text-muted">{author}  {date}</div>'

    return card


def declare_variables(variables, macro):
    @macro
    def print_thumbnail(dir):
      return get_thumbnail_element(dir)
    @macro
    def today():
        return datetime.datetime.now().strftime('%Y-%m-%d')

if __name__ == '__main__':
    dir = sys.argv[1]
    element = get_thumbnail_element(dir)

    print(element)