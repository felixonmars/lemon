require 'lemon/view/test_reports/abstract'

module Lemon::TestReports

  # Simple Dot-Progress Reporter
  class Dotprogress < Abstract

    def omit(unit)
      print "O"; $stdout.flush
    end

    def pass(unit)
      print "."; $stdout.flush
    end

    def fail(unit, exception)
      print "F"
    end

    def error(unit, exception)
      print "E"
    end

    def pending(unit, exception)
      print "P"
    end

    def finish_suite(suite)
      puts; puts

      ## if verbose
      unless record[:omit].empty?
        puts "OMITTED:\n\n"
        puts record[:omit].map{ |u| u.to_s }.sort.join('  ')
        puts
      end
      ## end

      unless record[:pending].empty?
        puts "PENDING:\n\n"
        record[:pending].each do |testunit, exception|
          puts "    #{testunit}"
        end
        puts
      end

      unless record[:fail].empty?
        puts "FAILURES:\n\n"
        record[:fail].each do |testunit, exception|
          puts "    #{testunit}"
          puts "    #{exception}"
          puts "    #{exception.backtrace[0]}"
          puts
        end
      end

      unless record[:error].empty?
        puts "ERRORS:\n\n"
        record[:error].each do |testunit, exception|
          puts "    #{testunit}"
          puts "    #{exception}"
          puts "    #{exception.backtrace[0]}"
          puts
        end
      end

      puts tally
    end

  end

end
