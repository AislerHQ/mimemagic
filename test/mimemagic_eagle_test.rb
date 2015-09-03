$LOAD_PATH.unshift(File.expand_path('../../lib/', __FILE__))

require 'bacon'
require 'mimemagic'
require 'stringio'

describe 'MimeMagic CadSoft EAGLE extension' do
  
  it 'should detect EAGLE v5 files' do
    MimeMagic.by_path_and_magic('./test/files-eagle/eagle_v5_board_1.brd').should.equal 'application/x-cadsoft-eagle-v5-board'
    MimeMagic.by_path_and_magic('./test/files-eagle/eagle_v5_schematic_1.sch').should.equal 'application/x-cadsoft-eagle-v5-schematic'
    MimeMagic.by_path_and_magic('./test/files-eagle/eagle_v5_board_2.brd').should.equal 'application/x-cadsoft-eagle-v5-board'
    MimeMagic.by_path_and_magic('./test/files-eagle/eagle_v5_schematic_2.sch').should.equal 'application/x-cadsoft-eagle-v5-schematic'
  end
  
  it 'should detect EAGLE XML (v6/v7) files' do
    MimeMagic.by_path_and_magic('./test/files-eagle/eagle_v6_board.brd').should.equal 'application/x-cadsoft-eagle-xml-board'
    MimeMagic.by_path_and_magic('./test/files-eagle/eagle_v6_schematic.sch').should.equal 'application/x-cadsoft-eagle-xml-schematic'
  end
end