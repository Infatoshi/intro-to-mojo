# intro-to-mojo

You may encounter an error where mojo is unable to use python or run python objects in this binary form (`Mojo/Python interoperability error: Unable to locate a suitable libpython, please set MOJO_PYTHON_LIBRARY`):

To see location of libpython in the linux environment `python3 -c 'import sysconfig; print(sysconfig.get_config_var("LIBDIR"))'`

Then: `ls $(python3 -c 'import sysconfig; print(sysconfig.get_config_var("LIBDIR"))') | grep libpython`

Combine the two to create the full path to the `.so` file (it might be something like `/usr/lib/x86_64-linux-gnu/libpython3.10.so`) and assign it to the `MOJO_PYTHON_LIBRARY` variable.

```
echo 'export MOJO_PYTHON_LIBRARY="<full_path_to_libpython.so>"' >> ~/.bashrc

source ~/.bashrc
```
---
I will update this repo as newer features become relevant.
---

## Links:
- Twitter / X: https://twitter.com/elliotarledge
- YouTube: https://www.youtube.com/@elliotarledge
- Discord: https://discord.gg/pV7ByF9VNm
- LinkedIn: https://www.linkedin.com/in/elliot-arledge-a392b7243/
- How to Start Jupyter Notebooks in 5 Minutes: https://www.youtube.com/watch?v=eLmweqU5VBA&t=10s&ab_channel=Elliotcodes

---
## Try the LLAMA2 Mojo version for yourself:
- https://github.com/tairov/llama2.mojo
