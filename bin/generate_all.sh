#!/bin/bash

wget -c https://imagemagick.org/archive/binaries/magick

mkdir it pt nl

bin/secrets_of_meditation.sh en ../ego-programus/SECRETS_OF_MEDITATION_A_LOGICAL_PROGRESSION_FROM_THEORY_TO_PRACTICE.txt index.html

bin/secrets_of_meditation.sh it ../ego-programus/SEGRETI_DELLA_MEDITAZIONE_UNA_PROGRESSIONE_LOGICA_DALLA_TEORIA_ALLA_PRATICA.txt it/index.html

bin/secrets_of_meditation.sh pt ../ego-programus/SEGREDOS_DA_MEDITACAO_UMA_PROGRESSAO_LOGICA_DA_TEORIA_A_PRATICA.txt pt/index.html

bin/secrets_of_meditation.sh nl ../ego-programus/GEHEIMEN_VAN_MEDITATIE_EEN_LOGISCHE_VOORTGANG_VAN_THEORIE_NAAR_PRAKTIJK.txt nl/index.html
