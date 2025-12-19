--- Returns environment keys for Poetry
--- Poetry installs its binary to $POETRY_HOME/bin

function PLUGIN:EnvKeys(ctx)
    local file = require("file")
    local bin_path = file.join_path(ctx.rootPath, "bin")

    return {
        {
            key = "PATH",
            value = bin_path,
        },
        {
            key = "POETRY_HOME",
            value = ctx.rootPath,
        },
    }
end
