#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

class KirakiraKinoko
  Kinoko = "(((бвб)))"
  Kirakira = "゜＊。.。*゜'゜＊。.。*゜"
  Length = 34

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
    "\e[3#{rand(6)+1}m#{char}\e[39m"
  end
end

kirakirakinoko = KirakiraKinoko.new
while true
  printf "\e[#{KirakiraKinoko::Length}D" + kirakirakinoko.get
  sleep 0.3
end
