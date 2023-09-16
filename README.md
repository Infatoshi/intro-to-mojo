# intro-to-mojo

You may encounter an error where mojo is unable to use python or run python objects in this binary form (`Mojo/Python interoperability error: Unable to locate a suitable libpython, please set MOJO_PYTHON_LIBRARY`):

To see location of libpython in the linux environment `python3 -c 'import sysconfig; print(sysconfig.get_config_var("LIBDIR"))'`

Then: `ls $(python3 -c 'import sysconfig; print(sysconfig.get_config_var("LIBDIR"))') | grep libpython`

Combine the two to create the full path to the `.so` file (it might be something like `/usr/lib/x86_64-linux-gnu/libpython3.10.so`) and assign it to the `MOJO_PYTHON_LIBRARY` variable.

```echo 'export MOJO_PYTHON_LIBRARY="<full_path_to_libpython.so>"' >> ~/.bashrc

source ~/.bashrc```
