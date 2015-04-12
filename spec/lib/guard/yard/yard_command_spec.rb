require 'spec_helper'
require 'guard/yard/yard_command'
require 'pry-nav'

describe Guard::Yard::YardCommand do

  context 'if passed `yard` for :cmd, it' do
    it 'returns a valid command string for `yard`' do
      command_string = Guard::Yard::YardCommand.new()
      expect("#{command_string}").to include("yard ")
    end
  end

  context 'if passed `yardoc` for :cmd, it' do
    it 'returns a valid command string for `yardoc`' do
      command_string = Guard::Yard::YardCommand.new({cmd: 'yardoc'})
      expect("#{command_string}").to include(' yardoc')
    end
  end

  context 'if passed `yardri` for :cmd, it' do
    it 'returns a valid command string for `yardri`' do
      command_string = Guard::Yard::YardCommand.new({cmd: 'yardri'})
      expect("#{command_string}").to include('yardri')
    end
  end

  context '#arg_error_check' do
    context 'it should return an error if' do
      context 'if passed a bad value for :cmd, it' do
        it 'outputs the error to $stdout' do
          expect { Guard::Yard::YardCommand.new({cmd: 'bad'}) }.to output.to_stdout
        end
      end
    end
  end

  context '#additional_options' do
    context 'if passed `true` for `:gem`, it' do
      it 'includes `&& yard gem` in the command' do
        command_string = Guard::Yard::YardCommand.new({gems: true})
        expect("#{command_string}").to include(' && yard gems')
      end
    end

    context 'if passed `true` for `:graph`, it' do
      it 'includes `&& yard graph` in the command' do
        command_string = Guard::Yard::YardCommand.new({graph: true})
        expect("#{command_string}").to include(' && yard graph')
      end
    end
  end
end