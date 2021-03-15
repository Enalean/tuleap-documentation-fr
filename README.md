Tuleap Documentation
====================

This is a proposal to use Sphinx (instead of docbook) in order to generate the 
documentation for [Tuleap](https://tuleap.org/).

Set-up your environment
-----------------------

    nix-shell
    virtualenv venv
    source venv/bin/activate
    pip install -r requirements.txt
    deactivate

Build the documentation
-----------------------

    nix-shell
    source venv/bin/activate
    make html
    deactivate

The documentation is generated in `tuleap-documentation-fr/_build/html/fr/` You can check the modifications by opening `index.html` with your web browser. You need to build the documentation in order to see your modifications.

License
-------

Tuleap and its documentation are licensed under GPLv2 or above.

