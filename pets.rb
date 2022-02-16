# frozen_string_literal: true

pets = { cat: 'fluffy', dog: %w[sparky fido], fish: 'oscar' }

pets[:dog].push('bowser')

p pets
