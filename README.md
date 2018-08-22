# Krona
Interactively explore metagenomes and more from a web browser.

Docker for Krona

Usage: 

input: metaphlan2 result / kraken report result

    docker run --rm -v /path:/path lxz/kraken:1.0 /kraken/metaphlan2/utils/metaphlan2krona.py -p /path/test.kraken.mpa.txt -k /path/test.krona.out

    docker run --rm -v /path:/path lxz/kraken:1.0 /kraken/Krona/KronaTools/scripts/ImportText.pl -o /path/test/test.kraken.krona.html /path/test/test.krona.out
