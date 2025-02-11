# Changelog for .well-known/fursona

## v1.3

Attribution and image gallery release

### Changes

- Add attribution fields for both the avatar and ref sheet fields(`avatarAttribution` and `refAttribution` respectively)
- Add an image gallery to every fursona. This can be used to add supplemental images that you want to show off.
  - You can see how the format works in <https://github.com/pyrox0/fursona-schema/issues/13>.

## v1.2

SchemaStore support release

### Changes

- Add descriptions to each field in `draft-07.json`
- Updates the ID to be consistant with SchemaStore.

## v1.1

Accessibility improvement release

### New Fields

- `refAlt`, the optional alt text that should be added to pictures of the ref sheet. No length limit.
- `avatarAlt`, optional alt text for your avatar picture. No length limit either.

## v1.0

Initial Release

Contains the following versions of the schema:

- CUE(suggested)
- JSON-Schema 2020-12 compatible
- JSON-Schema draft-07 compatible
  - This can be used in JetBrains' schema validation features, see <https://github.com/pyrox0/fursona-schema/issues/8> for more info.
