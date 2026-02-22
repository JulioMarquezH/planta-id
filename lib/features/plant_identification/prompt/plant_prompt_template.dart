class PlantPromptTemplate {
  static const String systemPrompt = '''
You are an expert botanist and plant identification specialist. When given a photo of a plant, you MUST call the identify_plant tool with the identification results.

Rules:
- If the image does not clearly show a plant, set confidence to 0.0 and provide your best guess or indicate uncertainty in the description.
- If you can identify the plant but are not fully certain, set confidence between 0.3 and 0.7.
- If you are highly confident, set confidence between 0.8 and 1.0.
- Always provide actionable, practical care instructions suitable for a home gardener.
- For pests_and_diseases, include 2-4 of the most common issues for this plant species.
- For fun_facts, include 2-3 interesting facts about the plant.
- All text fields must be in Spanish.
''';

  static const String userPrompt =
      'Identify this plant and call the identify_plant tool with all the details in Spanish.';

  static const Map<String, dynamic> jsonSchema = {
    'type': 'object',
    'properties': {
      'common_name': {
        'type': 'string',
        'description': 'The most widely used common name for this plant',
      },
      'scientific_name': {
        'type': 'string',
        'description': 'Full binomial nomenclature (Genus species)',
      },
      'family': {
        'type': 'string',
        'description': 'The botanical family this plant belongs to',
      },
      'description': {
        'type': 'string',
        'description':
            'A 2-3 sentence description of the plant and its notable characteristics',
      },
      'care_instructions': {
        'type': 'object',
        'properties': {
          'watering_frequency': {
            'type': 'string',
            'description':
                'How often to water, e.g. "Every 7-10 days" or "When top 2 inches of soil are dry"',
          },
          'sunlight_needs': {
            'type': 'string',
            'description':
                'Light requirements, e.g. "Bright indirect light" or "Full sun (6+ hours direct)"',
          },
          'soil_type': {
            'type': 'string',
            'description': 'Preferred soil mix or type',
          },
          'temperature_range': {
            'type': 'string',
            'description': 'Ideal temperature range in both F and C',
          },
          'humidity': {
            'type': 'string',
            'description': 'Humidity preferences and tips',
          },
          'fertilizer_schedule': {
            'type': 'string',
            'description': 'When and what type of fertilizer to use',
          },
          'pruning_tips': {
            'type': 'string',
            'description': 'Guidance on if/when/how to prune',
          },
        },
        'required': [
          'watering_frequency',
          'sunlight_needs',
          'soil_type',
          'temperature_range',
          'humidity',
          'fertilizer_schedule',
          'pruning_tips',
        ],
        'additionalProperties': false,
      },
      'climate_info': {
        'type': 'object',
        'properties': {
          'native_region': {
            'type': 'string',
            'description': 'Geographic origin of the plant',
          },
          'hardiness_zones': {
            'type': 'string',
            'description': 'USDA hardiness zones, e.g. "9-11"',
          },
          'climate_preference': {
            'type': 'string',
            'description':
                'Preferred climate type, e.g. "Tropical", "Mediterranean"',
          },
          'indoor_outdoor': {
            'type': 'string',
            'description':
                'Whether the plant is best suited for indoor, outdoor, or both',
          },
        },
        'required': [
          'native_region',
          'hardiness_zones',
          'climate_preference',
          'indoor_outdoor',
        ],
        'additionalProperties': false,
      },
      'pests_and_diseases': {
        'type': 'array',
        'items': {
          'type': 'object',
          'properties': {
            'name': {
              'type': 'string',
              'description': 'Name of the pest or disease',
            },
            'type': {
              'type': 'string',
              'enum': ['pest', 'disease'],
              'description': 'Whether this is a pest or a disease',
            },
            'symptoms': {
              'type': 'string',
              'description': 'What to look for to identify this issue',
            },
            'treatment': {
              'type': 'string',
              'description': 'How to treat or prevent this issue',
            },
          },
          'required': ['name', 'type', 'symptoms', 'treatment'],
          'additionalProperties': false,
        },
      },
      'fun_facts': {
        'type': 'array',
        'items': {'type': 'string'},
        'description': '2-3 interesting facts about this plant',
      },
      'confidence': {
        'type': 'number',
        'description':
            'Confidence score from 0.0 to 1.0 indicating how certain the identification is',
      },
    },
    'required': [
      'common_name',
      'scientific_name',
      'family',
      'description',
      'care_instructions',
      'climate_info',
      'pests_and_diseases',
      'fun_facts',
      'confidence',
    ],
    'additionalProperties': false,
  };
}
