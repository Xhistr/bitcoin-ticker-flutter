import 'networking.dart';
const apiKey = 'F46C9FC7-C901-43CC-AA83-11CE3F0C6B81';
const coinAPIurl ='https://rest.coinapi.io/v1/exchangerate';


class Working{

  Working(this.cryptoCurrency,this.fiatCurrency);
  String cryptoCurrency;
  String fiatCurrency;

 Future<String> getExchangeRate() async{
   String url="$coinAPIurl/$cryptoCurrency/$fiatCurrency?apikey=$apiKey";
   NetworkHelper networkHelper = NetworkHelper(url);
   var exchangeRateData= await networkHelper.getData();
   print(exchangeRateData);
   String rate = exchangeRateData['rate'].toStringAsFixed(2);

   return rate;
 }

}