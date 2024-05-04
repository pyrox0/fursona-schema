# Changelog for .well-known/fursona

## v1.2
SchemaStore support release

### Changes
* Add descriptions to each field in `draft-07.json`
* Updates the ID to be consistant with SchemaStore.

## v1.1
Accessibility improvement release

### New Fields
* `refAlt`, the optional alt text that should be added to pictures of the ref sheet. No length limit.
* `avatarAlt`, optional alt text for your avatar picture. No length limit either.

## v1.0
Initial Release

Contains the following versions of the schema:

* CUE(suggested)
* JSON-Schema 2020-12 compatible
* JSON-Schema draft-07 compatible
  * This can be used in JetBrains' schema validation features, see #8 for more info.
