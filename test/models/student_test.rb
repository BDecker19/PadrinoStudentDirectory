require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class StudentTest < Test::Unit::TestCase
  context "Student Model" do
    should 'construct new instance' do
      @student = Student.new
      assert_not_nil @student
    end
  end
end
