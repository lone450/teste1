LoginURL = "https://hotpink-rhinoceros-372360.hostingersite.com/LONE_MODS_OFC/adm_principal_recent/mod/sc.php"

function MakeRequest(url)
    local response = gg.makeRequest(url)
    
    if not response then
        gg.alert("Falha ao fazer a requisi��o. Tente novamente.")
        return nil
    end
    
    -- Exibir status e raz�o
    local status = response.status or "N/A"
    local reason = response.reason or "N/A"
    gg.alert("Status: " .. status .. ", Raz�o: " .. reason)
    
    if status == 200 then
        return response.content
    else
        gg.alert("Erro ao conectar ao servidor: " .. status .. " " .. reason)
        return nil
    end
end

function Main()
    local Prompt = gg.prompt({"?? USU�RIO", "?? SENHA", "? SAIR"}, nil, {"text", "text", "checkbox"})
    if not Prompt then
        return
    end
    if Prompt[3] then
        return
    end

    local usuario = Prompt[1]
    local senha = Prompt[2]

    -- Formar a URL com os par�metros
    local url = LoginURL .. "?usuario=" .. usuario .. "&chave=" .. senha

    -- Fazer a requisi��o
    local responseContent = MakeRequest(url)
    if responseContent then
        gg.alert("Conte�do recebido: " .. responseContent)
        -- Aqui voc� pode processar o conte�do recebido
    end
end

Main()

if gg.isVisible(true) then
    gg.setVisible(false)
end
