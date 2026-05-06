# Guia Interna de App Privacy

Esta guia no sustituye las respuestas finales en App Store Connect. Sirve para alinear las respuestas con la build real.

Fuentes revisadas el 22 de abril de 2026:

- Apple App Privacy Details: https://developer.apple.com/app-store/app-privacy-details/
- Google AdMob iOS data disclosure: https://developers.google.com/admob/ios/privacy/data-disclosure
- Google AdMob UMP iOS: https://developers.google.com/admob/ios/privacy

## Estado de la build actual

- Sin login propio.
- Sin backend propio.
- Favoritos y cache locales en el dispositivo.
- Consumo de APIs publicas de Roblox.
- SDKs de Google Mobile Ads y Google User Messaging Platform integrados.
- En `DEBUG` se usan `test ad unit IDs`; en `Release`, `AdMobConfiguration` espera IDs reales inyectados por `Info.plist`.
- `GoogleMobileAdsBootstrap` no arranca si falta un `GADApplicationIdentifier` real o si la configuracion sigue sin sustituirse.

Decision de producto para primera release: activar AdMob/UMP para monetizacion. Antes de enviar a App Store, la build de `Release` debe tener IDs reales y consentimiento operativo antes de solicitar anuncios.

## Primera release con anuncios

Antes de responder App Privacy:

- Sustituir `GADApplicationIdentifier` por ID real.
- Sustituir ad unit IDs de prueba por IDs reales en la configuracion de `Release`.
- Configurar mensajes de privacidad en AdMob.
- Pedir actualizacion de consentimiento en cada arranque.
- Presentar formulario UMP si corresponde.
- No solicitar anuncios hasta que `canRequestAds` lo permita.
- Añadir entrada visible de opciones de privacidad si UMP la requiere.
- Completar App Privacy incluyendo practicas de terceros integrados.

## Datos a revisar en App Store Connect

Revisar especialmente:

- Identificadores del dispositivo.
- Datos de publicidad.
- Interacciones con anuncios.
- Diagnosticos y rendimiento.
- Ubicacion aproximada derivada de IP si aplica por SDK.
- Datos de uso de producto.
- Si los datos se usan para tracking segun la configuracion final de anuncios y consentimiento.

## Acciones pendientes

- Definir URL publica final de privacidad.
- Definir URL publica final de soporte.
- Email operativo de privacidad: `miudo09dev@gmail.com`.
- Email operativo de soporte: `miudo09dev@gmail.com`.
- Cargar los IDs reales de AdMob en la configuracion privada no versionada usada por `Release`.
- Validar el reporte de privacidad generado por Xcode antes de archivar.
