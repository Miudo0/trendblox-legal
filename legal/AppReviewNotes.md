# Notas Sugeridas para App Review

Estas notas quedan como base directa para App Store Connect. Solo requieren sustituir contactos/URLs finales y comprobar que la build de `Release` usa la configuracion real de anuncios.

## Resumen

TrendBlox es una app independiente de descubrimiento editorial para experiencias publicas de Roblox. La app muestra rankings, busqueda, favoritos locales, detalles publicos de experiencias y enlaces externos oficiales para abrir una experiencia en Roblox.

## Afiliacion

TrendBlox no es una app oficial de Roblox, no esta afiliada, patrocinada ni respaldada por Roblox Corporation. La metadata, descripcion y politica de privacidad deben dejarlo claro.

## Login y cuentas

La app no tiene login propio y no solicita credenciales de Roblox.

## Contenido

La app consume datos publicos de Roblox, como nombres de experiencias, creadores, imagenes publicas, metricas publicas y badges. TrendBlox no aloja experiencias, no permite publicar contenido dentro de la app y no modifica el contenido de Roblox.

TrendBlox debe presentarse como una app editorial/de descubrimiento, no como una app oficial de Roblox ni como una plataforma propia de publicacion de contenido. La app indexa datos publicos y redirige externamente al entorno oficial de Roblox para jugar.

## Enlaces externos

El CTA principal abre experiencias mediante enlaces oficiales HTTPS de Roblox con `placeId` valido. El usuario sale hacia Roblox para jugar.

## Soporte y reporte

La app tiene soporte publico en `https://miudo0.github.io/trendblox-legal/support/` y politica de privacidad publica en `https://miudo0.github.io/trendblox-legal/privacy/`.

El canal operativo de soporte y privacidad es `miudo09dev@gmail.com`.

Si App Review pregunta por contenido problematico o enlaces incorrectos, la respuesta base es:

- TrendBlox no aloja contenido propio ni UGC.
- La app permite reportar incidencias por email operativo.
- TrendBlox puede revisar errores de presentacion o enlazado dentro de la app.
- La moderacion del contenido de la experiencia en si pertenece a Roblox y a sus creadores.

## Favoritos y cache

Los favoritos y la cache son locales en el dispositivo mediante SwiftData. No hay backend propio de sincronizacion.

## Anuncios

Esta build activa anuncios nativos de Google AdMob. La app usa Google User Messaging Platform para recopilar consentimiento cuando corresponde y muestra opciones de privacidad cuando son requeridas.

Si la configuracion publicitaria de la build lo requiere, iOS puede presentar tambien el permiso de App Tracking Transparency para anuncios personalizados. Las respuestas de App Privacy deben alinearse con el binario final, `PrivacyInfo.xcprivacy` y la configuracion real de consentimiento/ads de `Release`.

## Datos de prueba

No requiere cuenta de prueba.

Ruta de prueba sugerida:

1. Abrir la app.
2. Revisar Inicio.
3. Ir a Buscar y consultar una experiencia.
4. Abrir una ficha de detalle.
5. Guardar y quitar favorito.
6. Abrir Descubre y navegar entre cards.
7. Pulsar `Jugar ahora` para verificar que se abre Roblox mediante enlace externo.
