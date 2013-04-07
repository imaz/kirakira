#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

class KirakiraKinoko
  KINOKO = "(((бвб)))"
  KIRAKIRA = "゜＊。.。*゜'゜＊。.。*゜"
  PRINT_LENGTH = 34

  def initialize
    @@kirakira = KIRAKIRA.split('')
  end

  def get
    coloring_kirakira = @@kirakira.map{|char|
      coloring(char)
    }
    coloring_kinoko + coloring_kirakira.join
  end

  private
  def coloring_kinoko
    "\e[37m#{KINOKO}\e[39m"
  end

  def coloring(char)
    "\e[3#{rand(6)+1}m#{char}\e[39m"
  end
end

kirakirakinoko = KirakiraKinoko.new
while true
  printf "\e[#{KirakiraKinoko::PRINT_LENGTH}D" + kirakirakinoko.get
  sleep 0.3
end
