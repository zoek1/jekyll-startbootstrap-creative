require 'jekyll_asset_pipeline'

module JekyllAssetPipeline
  class LessConverter < JekyllAssetPipeline::Converter
    require 'less'

    def self.filetype
      '.less'
    end

    def convert
      parser = Less::Parser.new :paths => ['../_less']
      return parser.parse(@content).to_css
    end
  end
end
