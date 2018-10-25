# frozen_string_literal: true

json.array! @patterns, partial: 'patterns/pattern', as: :pattern
