require 'nokogiri'
require 'securerandom'
require 'fileutils'

module Nyaplot
  class Plot
    SVG_HEADER = '<svg xmlns="http://www.w3.org/2000/svg">'
    SVG_CLOSE = '</svg>'
    TEMP_NAME = 'temp.html'

    # Get html nodes created by JavaScript with browsers
    # @return [String] built html
    def get_nodes
      require 'watir'
      self.export_html(TEMP_NAME)
      path = File.expand_path("./" + TEMP_NAME, Dir.pwd)
      browser = Watir::Browser.start("file://" + path)
      html = browser.html
      browser.close
      FileUtils.rm_r(path)
      return html
    end

    # Export plot as SVG
    # @param [String] name the name of svg file to export
    def export_svg(name=SecureRandom.uuid.to_s + ".svg")
      html = get_nodes
      str = Nokogiri::HTML.parse(html).xpath('//svg').to_s
      path = File.expand_path("./" + name, Dir/pwd)
      File.write(path, str)
    end

    # Export context of plot as SVG
    # @param [String] name the name of svg file to export
    def export_contents(name=SecureRandom.uuid.to_s + ".svg")
      html = get_nodes
      contents = Nokogiri::HTML.parse(html).at('.context_child').to_s
      str = SVG_HEADER + contents + SVG_CLOSE
      path = File.expand_path("./" + name, Dir/pwd)
      File.write(path, str)
    end
  end
end
