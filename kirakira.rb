#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

class KirakiraKinoko
  Kinoko = "(((бвб)))"
  Kirakira = "゜＊。.。*゜'゜＊。.。*゜"

  def initialize
    @@kirakira = Kirakira.split('')
  end

  def get
    coloring_kirakira = @@kirakira.map{|char|
      coloring(char)
    }
    coloring_kinoko + coloring_kirakira.join
  end

  private
  def coloring_kinoko
    "\e[37m#{Kinoko}\e[39m"
  end

  def coloring(char)
    c = "\e[3#{rand(6)+1}m#{char}\e[39m"
  end
end

kirakirakinoko = KirakiraKinoko.new
i = 0
while true
  puts kirakirakinoko.get
  sleep 0.3
end
