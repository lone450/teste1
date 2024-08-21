

--___________________________________________________
--local de guardar variaveis das funçoes somente togles
-- Variáveis para controlar o estado das funções

local scriptMinimizada = false
local Variavel_bypass = false
local Variavel_Camera_Hack = false


--fim das variaveis
--___________________________________________________





-- Função para exibir o menu e executar as opções
--___________________________________________________
-- começo do menu layout funcions  

function showMenu()
    local menuOptions = 
    {
        -- 1then
        "Sair do Menu", 
        
         --2 then
        "Miniminizar", 
        
        -- chamando variavel la emcima pra true 
        --quando se ativar funçao
        
         -- 3 then
        Variavel_bypass  
        and "Desativar AnteCheat Lone"         
        --chamando variavel para false
        or "Ativar AnteCheat Lone",
        
        -- 4then
        "??", 
        
        -- 5 then 
          "Fov Awm",
        
        -- 6 then
        Variavel_Camera_Hack   
        and "Desativar CAMERA HACK" 
        or "Ativar CAMERA HACK",
         
         --7 then
         "Bala Magica",
         --8 teh
         "Antena Masculino",
         --9the
         "Antena Feminino",
         --10then
         "Camera Afastada",
         --11 then
         "Bloquear Mira",
         --12 then
         "Apagar Convidado",
         -- 13 then
         "FOV AWM BAN",
         "ofsset"
         
         
        
        
        
    }


    local menu1 = gg.choice
    (menuOptions, nil, "MENU LONE MODS")

    -- se apertar em algum dos nome ou toggle
    -- ativara chamando as funçao que organizou
    -- na sequencia la emcima no menu options
    
    if menu1 == 1 then 
    -- 1then referente a primeira funçao
        gg.alert("Volte Sempre!")
        os.exit()
        
     elseif menu1 == 2 then -- referente a segunda funçao
        minimizarScript()
        
     elseif menu1 == 3 then --referente a terceira funçao
        voidSecurity()
        
      elseif menu1 == 4 then --  
        bypaspc()
        
        
     elseif menu1 == 5 then -- referente a quarta funçao
        FovAwmOn()
        
     elseif menu1 == 6 then -- referente a quinta funçao
        VoidCameraHack()
        
     
     elseif menu1 == 7 then -- bala magica
     BalaMagica()
     
     elseif menu1 == 8 then -- antena m
     AntenaOnM()
     
     elseif menu1 == 9 then -- antena feminina
        AntenaOnF()
        
        elseif menu1 == 10 then -- camera afastada
        cameraafastada()
        
        elseif menu1 == 11 then -- bloquear mira
        BloquearMira()
        
        elseif menu1 == 12 then -- apagar convidado
        ResetGuest()
        
        elseif menu1 == 13 then -- fov awm ban
        FovAwmDandoBan()
        elseif menu1 == 14 then
        ofs()
        
        
     else                  -- referente a finalizaçao da script
        gg.alert("Script Fechada Lone Mods.")
        return
               
    end -- fim do if
    
    
end  -- fim do funcion Show menu();
--___________________________________________________





--_________________________________________________________
-- começo do void de funcoes para alteranar estado swtch

-- Função para alternar a Antena de Ombro
function voidSecurity()

    Variavel_bypass = not Variavel_bypass -- Inverte o estado atual    
    if Variavel_bypass then
    
       bypas()
        
    else
    --    AntenaOff()
    end
    
end





function VoidCameraHack()

    Variavel_Camera_Hack = not Variavel_Camera_Hack -- Inverte o estado atual
    if Variavel_Camera_Hack then
    
        CameraHack()
        
    else
        -- caso queria desativar
    end
    
end






-- Fim do void
--_________________________________________________________


--_________________________________________________________
-- começo bypas anteCheat


function bypas()

   gg.setRanges(gg.REGION_CODE_APP)
   gg.searchNumber("h 04 00 00 00 04 00 00 00 04 00 00 00 04 00 00 00 05 00 00 00 05 00 00 00 05 00 00 00 05 00 00 00 00 00 00 00 70", gg.TYPE_BYTE)
   gg.getResults(1000)
   gg.editAll("h 00 00 00 00 00 00 00 00 04 00 00 00 04 00 00 00 05 00 00 00 05 00 00 00 05 00 00 00 05 00 00 00 00 00 00 00 70", gg.TYPE_BYTE)
   gg.clearResults()
   gg.toast("Security Ativado✔")

    showMenu() -- Mostra o menu novamente
end


function bypaspc()
--gg.setRanges(gg.REGION_CODE_APP)
 --  gg.searchNumber("h ", gg.TYPE_BYTE)
 --  gg.getResults(1000)
 --  gg.editAll("h ", gg.TYPE_BYTE)
 --  gg.clearResults()
--   gg.toast("Security pc Ativado✔")

--    showMenu() -- Mostra o menu novamente
end



-- Fim do bypass
--_________________________________________________________

function ResetGuest()

gg.setRanges(gg.REGION_CODE_APP)
   gg.searchNumber("h 10 4C 2D E9 08 B0 8D E2 0C 01 9F E5 00 00 8F E0", gg.TYPE_BYTE)
   gg.getResults(1000)
   gg.editAll("h 01 00 A0 E3 1E FF 2F E1 0C 01 9F E5 00 00 8F E0", gg.TYPE_BYTE)
   gg.clearResults()
   gg.toast("Conta Resetada Com Sucesso✔")

    showMenu() -- Mostra o menu novamente




end

--_________________________________________________________
-- começo das antenas 

function AntenaOnM()

   gg.setRanges(gg.REGION_ANONYMOUS)
   gg.searchNumber("h 3F 00 00 00 00 D7 F0 06 BF 5D 1A 43 BC B9 13 10 BF 00 00 80 3F", gg.TYPE_BYTE)
   gg.getResults(1000)
   gg.editAll("h 3F 00 00 00 46 D7 F0 06 BF 5D 1A 43 BC B9 13 10 BF 00 00 80 3F", gg.TYPE_BYTE)
   gg.clearResults()
   gg.toast("Antena Masculino Ativado✔")

   

    showMenu() -- Mostra o menu novamente
end


function AntenaOnF()
gg.setRanges(gg.REGION_ANONYMOUS)
   gg.searchNumber("h 00 00 00 00 49 17 81 3C C2", gg.TYPE_BYTE)
   gg.getResults(1000)
   gg.editAll("h 00 00 00 48 49 17 81 3C C2", gg.TYPE_BYTE)
   gg.clearResults()
   gg.toast("Antena Feminino Ativado✔")

showMenu() -- Mostra o menu novamente
end





-- Função para desativar a Antena de Ombro
function AntenaOff()
  --  gg.alert("Antena de Ombro desativada!") 
    showMenu() -- Mostra o menu novamente
end

--fim das antenas
--_________________________________________________________


function ofs()
lone("libil2cpp.so","0x11038ec", "0100A0E31EFF2FE1")
end


--_________________________________________________________
-- começo do fov awm

function FovAwmOn()

   gg.setRanges(gg.REGION_ANONYMOUS)
   gg.searchNumber("h 08 00 00 00 00 00 60 40 CD CC 8C 3F 8F C2 F5 3C CD CC CC 3D 07 00 00 00 00 00 00 00 00 00 00 00 00 00 F0 41 00 00 48 42 00 00 00 3F 33 33 13 40 00 00 B0 3F 00 00 80 3F 01 00 00 00", gg.TYPE_BYTE)
   gg.getResults(1000)
   gg.editAll("h 08 00 00 00 00 00 60 40 CD CC 8C 3F 8F C2 F5 3C CD CC CC 3D 07 00 00 00 00 00 B3 7F 00 00 00 00 00 00 F0 41 00 00 48 42 00 00 00 3F 33 33 13 40 00 00 B0 3F 00 00 80 3F 01 00 00 00", gg.TYPE_BYTE)
   gg.clearResults()
   gg.toast("FOV AWM Ativado✔")

showMenu() 
    
end



-- fim do fov awm


function FovAwmDandoBan()

   gg.setRanges(gg.REGION_ANONYMOUS)
   gg.searchNumber("h 08 00 00 00 00 00 60 40 CD CC 8C 3F 8F C2 F5 3C CD CC CC 3D 07 00 00 00 00 00 00 00 00 00 00 00 00 00 F0 41 00 00 48 42 00 00 00 3F 33 33 13 40 00 00 B0 3F 00 00 80 3F 01 00 00 00", gg.TYPE_BYTE)
   gg.getResults(1000)
   gg.editAll("h 08 00 00 00 00 00 60 40 CD CC 8C 3F 8F C2 F5 3C CD CC CC 3D 07 00 00 00 00 00 9D FF 02 00 00 00 00 00 F0 41 00 00 48 42 00 00 00 3F 33 33 13 40 00 00 B0 3F 00 00 80 3F 01 00 00 00", gg.TYPE_BYTE)
   gg.clearResults()
   gg.toast("FOV AWM Ativado✔")

showMenu() 
    
end


--_________________________________________________________



--_________________________________________________________
-- começo camera alta

function CameraHack()

   gg.setRanges(gg.REGION_CODE_APP)
   gg.searchNumber("h 01 00 50 E3 03 00 00 1A 15 8A 94 ED 10 0A 18 EE", gg.TYPE_BYTE)
   gg.getResults(1000)
   gg.editAll("h 01 00 50 E3 03 00 00 1A 15 8A 94 ED 70 0F 43 E3", gg.TYPE_BYTE)
   gg.clearResults()
   gg.toast("Camera Hack Ativado✔")

    showMenu() -- Mostra o menu novamente
end


-- fim camera alta
--_________________________________________________________


function BalaMagica()

   gg.setRanges(gg.REGION_CODE_APP)
   gg.searchNumber("h AC C5 27 37 30 48 2D E9 01 40 A0 E1 20 10 9F E5 00 50 A0 E1 1C 00 94 E5 01 10 8F E0", gg.TYPE_BYTE)
   gg.getResults(1000)
   gg.editAll("h AC C5 7F 3F 30 48 2D E9 01 40 A0 E1 20 10 9F E5 00 50 A0 E1 1C 00 94 E5 01 10 8F E0", gg.TYPE_BYTE)
   gg.clearResults()
   gg.toast("Bala Mágica Ativado✔")

    showMenu() -- Mostra o menu novamente


end

function cameraafastada()
gg.setRanges(gg.REGION_CODE_APP)
   gg.searchNumber("h B4 43 DB 0F 49 40 10 2A 00", gg.TYPE_BYTE)
   gg.getResults(1000)
   gg.editAll("h B4 43 DB 0F B0 40 10 2A 00", gg.TYPE_BYTE)
   gg.clearResults()
   gg.toast("Camera Afastada Ativado✔")

showMenu() -- Mostra o menu novamente
end

function BloquearMira()
gg.setRanges(gg.REGION_ANONYMOUS)
   gg.searchNumber("h 00 00 C0 3F 01 00 00 00 00 00 34 42", gg.TYPE_BYTE)
   gg.getResults(1000)
   gg.editAll("h 00 00 C0 3C 01 00 00 00 00 00 34 42", gg.TYPE_BYTE)
   gg.clearResults()
   gg.toast("Bloquear Mira Ativado✔")

showMenu() -- Mostra o menu novamente
end




--_________________________________________________________
-- Função para minimizar a script
function minimizarScript()
    scriptMinimizada = true
    gg.setVisible(false) -- Oculta o Game Guardian
    gg.toast("Script minimizada. Toque no ícone do Game Guardian para restaurar.")
   
    -- Loop para manter a script em execução
while true do
    if scriptMinimizada and gg.isVisible(true) then
   showMenu()
      --  gg.setVisible(false) -- Oculta novamente se for mostrado acidentalmente
    end
    gg.sleep(100) -- Espera um pouco para não sobrecarregar o sistema
end

end
-- fim da mininizaçao da script
--_________________________________________________________




--_________________________________________________________
-- terminaçao da script
-- Chamar a função para exibir o menu ao iniciar a script
showMenu()
-- Evitar que o GG seja visível
if gg.isVisible(true) then
    gg.setVisible(false)
end
--fim da script
--_________________________________________________________



-- aqui embaixo se caso querer alguma regiao diferente
-- para colocar na script

--   gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
 --   name("libil2cpp.so")
 --   myoffset = 36506244
  --  original("7F 45 4C 46 01 01 01 00")
 --   replaced("7F 00 44 E3 1E FF 2F E1")
  --  gg.clearResults()
--    gg.toast("Hack de Câmera ativado!")


--_________________________________________________________


--  gg.setRanges(gg.REGION_CODE_APP) -- Define a região para o código do aplicativo xa code app perigoso
  --  gg.searchNumber("h 01 00 50 E3 03 00 00 1A 15 8A 94 ED 10 0A 18 EE", gg.TYPE_BYTE)
  --  gg.getResults(1000)
  --  gg.editAll("h 01 00 50 E3 03 00 00 1A 15 8A 94 ED 70 0F 43 E3", gg.TYPE_BYTE)
  --  gg.clearResults()
 --   gg.toast("Camera Hack Ativado✔")
    
  --  gg.setRanges(gg.REGION_ANONYMOUS)
   -- gg.searchNumber("", gg.TYPE_FLOAT)
   
   




