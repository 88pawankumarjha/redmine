<<<<<<< HEAD
module RFPDF
  module ActionView

  private
    def _rfpdf_compile_setup(dsl_setup = false)
      compile_support = RFPDF::TemplateHandler::CompileSupport.new(controller)
      @rfpdf_options = compile_support.options
    end

  end
end

=======
module RFPDF
  module ActionView

  private
    def _rfpdf_compile_setup(dsl_setup = false)
      compile_support = RFPDF::TemplateHandler::CompileSupport.new(controller)
      @rfpdf_options = compile_support.options
    end

  end
end

>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
