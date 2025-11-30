

Homepage of the LLEMMMa Working Group in the Department of Philosophy at UC Davis: <https://llemmma.github.io/>

For most inquiries, email Rohan, but for site-related things, email Brandon.


---
### Maintenance
After each edit of the site, it's worth it to run the following from the root of the site directory:
```bash
./smarten_all.sh
```
This will automatically transform all apostrophes and quotation marks and whatnot into their right form, making directly editing the HTML much easier. The files `smarten.py` and `smarten_all.sh` must be kept together -- ideally at the root of the site -- or the script won't execute or won't execute properly.
