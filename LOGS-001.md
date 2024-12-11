❯ TF=tofu make init

Initializing 4o...

Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 4.0"...
- Installing hashicorp/aws v4.67.0...
- Installed hashicorp/aws v4.67.0 (signed, key ID 0C0AF313E5FD9F80)

Providers are signed by their developers.
If you'd like to know more about provider signing, you can read about it here:
https://opentofu.org/docs/cli/plugins/signing/

OpenTofu has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that OpenTofu can guarantee to make the same selections by default when
you run "tofu init" in the future.

OpenTofu has been successfully initialized!

You may now begin working with OpenTofu. Try running "tofu plan" to see
any changes that are required for your infrastructure. All OpenTofu commands
should now work.

If you ever set or change modules or backend configuration for OpenTofu,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.


Initializing claude3.5sonnet...

Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/tls versions matching "~> 4.0"...
- Finding hashicorp/aws versions matching "~> 5.0"...
- Finding hashicorp/kubernetes versions matching "~> 2.0"...
- Installing hashicorp/tls v4.0.6...
- Installed hashicorp/tls v4.0.6 (signed, key ID 0C0AF313E5FD9F80)
- Installing hashicorp/aws v5.80.0...
- Installed hashicorp/aws v5.80.0 (signed, key ID 0C0AF313E5FD9F80)
- Installing hashicorp/kubernetes v2.34.0...
- Installed hashicorp/kubernetes v2.34.0 (signed, key ID 0C0AF313E5FD9F80)

Providers are signed by their developers.
If you'd like to know more about provider signing, you can read about it here:
https://opentofu.org/docs/cli/plugins/signing/

OpenTofu has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that OpenTofu can guarantee to make the same selections by default when
you run "tofu init" in the future.

OpenTofu has been successfully initialized!

You may now begin working with OpenTofu. Try running "tofu plan" to see
any changes that are required for your infrastructure. All OpenTofu commands
should now work.

If you ever set or change modules or backend configuration for OpenTofu,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.



Initializing gemini1206...

Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 5.0"...
- Installing hashicorp/aws v5.80.0...
- Installed hashicorp/aws v5.80.0 (signed, key ID 0C0AF313E5FD9F80)

Providers are signed by their developers.
If you'd like to know more about provider signing, you can read about it here:
https://opentofu.org/docs/cli/plugins/signing/

OpenTofu has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that OpenTofu can guarantee to make the same selections by default when
you run "tofu init" in the future.

OpenTofu has been successfully initialized!

You may now begin working with OpenTofu. Try running "tofu plan" to see
any changes that are required for your infrastructure. All OpenTofu commands
should now work.

If you ever set or change modules or backend configuration for OpenTofu,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.


Initializing o1...

Initializing the backend...
OpenTofu encountered problems during initialization, including problems
with the configuration, described below.

The OpenTofu configuration must be valid before initialization so that
OpenTofu can determine which modules and providers need to be installed.
╷
│ Error: Duplicate data "aws_subnets" configuration
│ 
│   on eks.tf line 38:
│   38: data "aws_subnets" "public" {
│ 
│ A aws_subnets data resource named "public" was already declared at eks-workers.tf:37,1-28. Resource names must be unique
│ per type in each module.
╵

make: *** [Makefile:11: init] Error 1