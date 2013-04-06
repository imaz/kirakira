#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

class KirakiraKinoko
  Kinoko = "\e[37m(((бвб)))\e[39m"
  Kirakira = "゜＊。.。*゜'゜＊。.。*゜"

  def initialize
    @@kirakira = Kirakira.split('')
  end

  def get
    color_kirakira = @@kirakira.map{|char|
      coloring(char)
    }
    Kinoko + color_kirakira.join
  end

  private
  def coloring(char)
    c = "\e[3#{rand(6)+1}m#{char}\e[39m"
  end
end

kirakirakinoko = KirakiraKinoko.new
puts kirakirakinoko.get
