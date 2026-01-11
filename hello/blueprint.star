# Hello Example - A minimal Starlark blueprint

def setup():
    return config(
        name = "Hello Example",
        version = "1.0.0",
        description = "A minimal blueprint to demonstrate the CLI.",
    )

def main():
    # All inputs must be inside a page()
    page("Project Basics", "Set up your project.", [
        input("Project Name", required=True),
        select("License", options=["mit", "apache-2.0", "none"], default="mit"),
    ])
    
    # Computed values - ctx.project_name is available after the page
    set(project_slug = ctx.project_name.lower().replace(" ", "-"))
