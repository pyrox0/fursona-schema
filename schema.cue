package fursona

import (
	"strings"
	"list"
)

// Schema for .well-known/fursona, version 1.1
//
// A description of someone's fursona(s).
@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
@jsonschema(id="https://pyrox.dev/schemas/sonas")

// The list of fursonas.
#sonas: list.MinItems([#sona], 1)

// An image gallery item
#galleryItem: {
	image: =~"(https?|ftp|gemini)(:\/\/).+"
	imageAlt?: string
	imageAttribution?: string
	description?: strings.MaxRunes(500)
}

// A single fursona
#sona: {
	@jsonschema(id="https://pyrox.dev/schemas/sona")
	name: string
	pronouns?: string
	gender?: string
	species: string
	avatar?: =~"(https?|ftp|gemini)(:\/\/).+"
	avatarAlt?: string
	avatarAttribution?: string
	ref?: =~"(https?|ftp|gemini)(:\/\/).+"
	refAlt?: string
	refAttribution?: string
	age?: int
	birthdate?: string
	description: strings.MaxRunes(250)
	colors?: [...=~"^#([0-9a-fA-F]{6}|[0-9a-fA-F]{3})$"]
	gallery?: [...#galleryItem]
}
