# ARQUITECTURE

## Objetivo

Este repositorio separa el paquete legal publico de TrendBlox del codigo de la app para poder publicarlo con GitHub Pages y reutilizarlo en App Store Connect.

## Modulos

### `docs/`

Contiene las paginas publicas de Jekyll:

- `index.md`: landing legal.
- `privacy.md`: politica de privacidad publica.
- `support.md`: pagina publica de soporte.
- `disclaimer.md`: descargo de no afiliacion.
- `_config.yml`: configuracion minima de GitHub Pages.

La configuracion de Jekyll define `url` y `baseurl` para soportar despliegue como proyecto de GitHub Pages bajo la subruta `/trendblox-legal`.

Las paginas publicas cubren tambien soporte operativo, reporte por email, descargo de no afiliacion y el encaje documental de ATT/tracking cuando la configuracion publicitaria de la build lo requiera.

### `legal/`

Contiene documentacion operativa y verificacion:

- textos base legales y de soporte;
- checklist de GitHub Pages;
- checklist de App Privacy;
- notas base para App Review;
- `pages-smoke-test.sh` para verificacion por `curl`.

Las notas de review deben mantenerse alineadas con la build final de `Release`, especialmente en App Privacy, tracking, consentimiento y encuadre editorial frente a contenido de terceros.
