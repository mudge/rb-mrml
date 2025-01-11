use magnus::{function, prelude::*, Error, Ruby};

fn to_html(ruby: &Ruby, input: String) -> Result<String, Error> {
    let root = match mrml::parse(&input) {
        Ok(root) => root,
        Err(err) => return Err(Error::new(ruby.exception_arg_error(), err.to_string())),
    };

    let opts = mrml::prelude::render::RenderOptions::default();

    match root.render(&opts) {
        Ok(content) => Ok(content),
        Err(err) => Err(Error::new(ruby.exception_standard_error(), err.to_string())),
    }
}

#[magnus::init]
fn init(ruby: &Ruby) -> Result<(), Error> {
    let module = ruby.define_module("MRML")?;
    module.define_singleton_method("to_html", function!(to_html, 1))?;
    Ok(())
}
