azure_awesome Cookbook
======================
This cookbook configures IIS on Windows 2012R2. It installs the web server role, and ASP.NET 4.5. The default website is removed and a new website is created, using paths from attributes.

Usage
-----
#### azure_awesome::default

Just include `azure_awesome` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[azure_awesome]"
  ]
}
```

License and Authors
-------------------
Author: Matt Stratton
