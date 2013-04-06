#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-
Kinoko = "\e[37m(((бвб)))\e[39m"
Kirakira = "゜＊。.。*゜'゜＊。.。*゜"
kirakira = Kirakira.split('')

def coloring(char)
  c = "\e[3#{rand(6)+1}m#{char}\e[39m"
end

color_kirakira = kirakira.map{|char|
  coloring(char)
}
puts Kinoko + color_kirakira.join
