# frozen_string_literal: true

class RecipesProvider

  RECIPES = [
    {
      "title": "Latte de Caramelo",
      "description": "Si te gusta el latte con un sabor especial, el latte de caramelo puede ser la mejor opción para brindarte una experiencia de dulzura natural y cremosidad de la leche vaporizada y el caramelo.",
      "ingredients": [
        "Espresso",
        "Leche vaporizada",
        "Sirope de caramelo"
      ],
      "image": "https://images.unsplash.com/photo-1599398054066-846f28917f38?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "id": 3
    },
    {
      "title": "Americano",
      "description": "Con un sabor similar al café negro, el americano consiste en un trago de espresso diluido con agua caliente.",
      "ingredients": [
        "Espresso",
        "Agua caliente"
      ],
      "image": "https://images.unsplash.com/photo-1532004491497-ba35c367d634?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "id": 5
    },
    {
      "title": "Espresso",
      "description": "Un trago de espresso puede servirse solo o usarse como base para la mayoría de las bebidas de café, como el latte y el macchiato.",
      "ingredients": [
        "Espresso"
      ],
      "image": "https://images.unsplash.com/photo-1579992357154-faf4bde95b3d?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "id": 6
    },
    {
      "title": "Macchiato",
      "description": "El macchiato es otra bebida a base de espresso que tiene una pequeña cantidad de espuma en la parte superior. Es el punto medio feliz entre un cappuccino y un doppio.",
      "ingredients": [
        "Espresso",
        "Espuma"
      ],
      "image": "https://images.unsplash.com/photo-1557772611-722dabe20327?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "id": 7
    },
    {
      "title": "Moca",
      "description": "Para todos los amantes del chocolate, se enamorarán de un moca. El moca es una bebida de espresso con chocolate, leche vaporizada y espuma.",
      "ingredients": [
        "Espresso",
        "Leche vaporizada",
        "Chocolate"
      ],
      "image": "https://images.unsplash.com/photo-1607260550778-aa9d29444ce1?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "id": 8
    }
  ]

  def self.get_recipes(access_token)
    uri = URI("#{ENV.fetch('API_SERVER_URL', nil)}/api/messages/protected")
    api_response = Net::HTTP.get_response(
      uri,
      { 'Authorization' => "Bearer #{access_token}" }
    )
    Rails.logger.debug "calling API: #{uri} with access token: #{access_token}"

    parsed_response = JSON.parse(api_response.body).deep_symbolize_keys
    Rails.logger.debug "API response: #{parsed_response}"
    api_response.code == '200' ? RECIPES : parsed_response[:message]
  end
end