def _hello_rule_impl(ctx):
  output_file = ctx.actions.declare_file(ctx.attr.name + ".txt")
  ctx.actions.write(output_file, "Hello World!")
  return [DefaultInfo(files = depset([output_file]))]

hello_rule = rule(
  implementation = _hello_rule_impl,
)
