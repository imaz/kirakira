#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-
Kinoko = '(((бвб)))'
Kirakira = "゜＊。.。*゜'゜＊。.。*゜"
kirakira = Kirakira.split('')

def coloring(char)
  "\e[3#{rand(6)+1}m#{char}\e[39m"
end
