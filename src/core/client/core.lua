-- CORE: É Usado para criar todo a parte funcional da nossa Aplicação/Resource

function fetchAPIData()
  fetchRemote(URL_API, function (responseData, error)
    local data = fromJSON(responseData)

    outputChatBox ("#A020F0 API: Informações De Usuários Do Github", 255, 255, 255, true )
    outputChatBox ("Usuário: #7B68EE" ..data.login.. "#FFFFFF !\nNome: #7B68EE" ..data.name.. "#FFFFFF !", 255, 255, 255, true )
    outputChatBox ("Repositorios: #7B68EE" ..data.public_repos.. "#FFFFFF !", 255, 255, 255, true )
    outputChatBox ("Gists: #7B68EE" ..data.public_gists.. "#FFFFFF !", 255, 255, 255, true )
    outputChatBox ("Biografia: #7B68EE" ..data.bio.. "#FFFFFF !", 255, 255, 255, true )
    outputChatBox ("Portfolio: #7B68EE" ..data.blog.. "#FFFFFF !", 255, 255, 255, true )
    outputChatBox ("Seguindo: #7B68EE" ..data.following.. "#FFFFFF Usuários!", 255, 255, 255, true )
    outputChatBox ("Seguidores: #7B68EE" ..data.followers.. "#FFFFFF Usuários!", 255, 255, 255, true )
    outputChatBox ("Localização: #7B68EE" ..data.location.. "#FFFFFF !", 255, 255, 255, true )
    outputChatBox ("Company: #7B68EE" ..data.company.. "#FFFFFF !", 255, 255, 255, true )
    outputChatBox ("Perfil Criada Em: #7B68EE" ..data.created_at.. "#FFFFFF !", 255, 255, 255, true )
    outputChatBox ("Perfil Atualizada Em: #7B68EE" ..data.updated_at.. "#FFFFFF !", 255, 255, 255, true )
    outputChatBox ("#D82323 API: Abra o console para verificar todas as informações enviadas!", 255, 255, 255, true )
  end)
end
