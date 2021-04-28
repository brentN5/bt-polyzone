fx_version 'adamant'

game 'gta5'

dependencies {
    "PolyZone"
}

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/main.lua'
}

exports {
    'AddCircleZone',
    'AddBoxZone',
    'AddPolyZone'
}
