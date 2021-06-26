const CoinGecko = require('coingecko-api');
const ConfigParser = require('configparser');
const path = require('path')

const config = new ConfigParser();

config.read(path.resolve(__dirname, 'cryptoBar.cfg'));
const sections = config.sections();

const client = new CoinGecko();

async function getBtc(){
  let data = await client.simple.price({
    ids: sections.slice(1),
    vs_currencies: [config.get('general', 'base_currency')]
  })

  let output = '';
  sections.slice(1).forEach(val => {
    icon = config.get(val, 'icon')
    output = output.concat(' ', icon, ' ', data.data[val].gbp)
  })

  console.log(output)

  
}

getBtc()
