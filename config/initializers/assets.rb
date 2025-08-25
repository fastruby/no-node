# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path

# Use relative standalone bun binary when running the assets:precompile task
module Jsbundling
  module Tasks
    def install_command
      "./bun install"
    end

    def build_command
      "./bun run build"
    end
  end
end

# Fix uglifier error looking for bun system-wide
ExecJS::Runtimes::Bun = ExecJS::ExternalRuntime.new(
  name: "Bun.sh",
  command: [ "./bun" ],
  runner_path: ExecJS.root + "/support/bun_runner.js",
  encoding: "UTF-8"
)
