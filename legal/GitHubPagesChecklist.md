# Checklist de GitHub Pages Legal

Guia operativa para publicar las paginas legales de TrendBlox.

## Estructura

- `docs/index.md`: landing legal.
- `docs/privacy.md`: politica de privacidad publica.
- `docs/support.md`: soporte publico.
- `docs/disclaimer.md`: descargo de no afiliacion.
- `docs/_config.yml`: configuracion minima de GitHub Pages con Jekyll.
- `legal/pages-smoke-test.sh`: autotest por `curl` para comprobar contenido y rutas.

## Antes de activar Pages

- Verificar responsable legal: `Saúl Cabaleiro Davila`.
- Verificar Support URL esperada: `https://miudo0.github.io/trendblox-legal/support/`.
- Verificar Privacy Policy URL esperada: `https://miudo0.github.io/trendblox-legal/privacy/`.
- Verificar email operativo: `miudo09dev@gmail.com`.
- Verificar tiempo estimado de respuesta: `48-72 horas`.
- Confirmar que la build enviada usa IDs reales de AdMob en `Release` y consentimiento UMP operativo.
- Publicar en repo separado: `git@github.com:Miudo0/trendblox-legal.git`.

## GitHub Pages

- Activar Pages desde `Settings > Pages`.
- En el repo separado, copiar el contenido de `docs/` y publicar desde la raiz, o copiar la carpeta completa y publicar desde `/docs`.
- Esperar a que GitHub complete el deploy.
- Ejecutar el smoke test contra la URL final.

## App Store Connect

- Privacy Policy URL: URL final de `/privacy/`.
- Support URL: URL final de `/support/`.
- Notas de review: usar `legal/AppReviewNotes.md` como base y elegir la opcion real de anuncios.
- App Privacy: completar siguiendo `legal/AppPrivacyChecklist.md` segun la build real de `Release`.
