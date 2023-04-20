package fursona

import (
	"strings"
	"list"
)

// Schema for .well-known/fursona
//
// A description of someone's fursona(s).
@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
@jsonschema(id="https://pyrox.dev/schemas/sonas")

// The list of fursonas for this person.
#sonas: list.MinItems([#sona], 1)

#sona: {
	@jsonschema(id="https://pyrox.dev/schemas/sona")
	name: string
	pronouns?: string
	gender?: string
	species: string
	ref?: =~"(https?|ftp|gemini)(:\/\/).+"
	avatar?: =~"(https?|ftp|gemini)(:\/\/).+"
	age?: int
	birthdate?: string
	description: strings.MaxRunes(250)
	colors?: [...=~"#([0-9a-f]){3,6}"]
}
