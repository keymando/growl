class Growl < Plugin
  def before
    Kernel.class_eval do
      def growl(message)
        system("/usr/local/bin/growlnotify -m \"#{message}\" -a Keymando")
      end
    end
  end
end
