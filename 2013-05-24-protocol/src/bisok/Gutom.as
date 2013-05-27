package bisok
{
   import com.company.googleanalytics.GA;
   import com.company.assembleegameclient.util.Currency;


   class Gutom extends Object
   {
      function Gutom(param1:String, param2:int, param3:int, param4:Boolean) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.id_=param1;
         this.price_=param2;
         this.currency_=param3;
         this.converted_=param4;
         return;
      }

      private var id_:String;

      private var price_:int;

      private var currency_:int;

      private var converted_:Boolean;

      public function record() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         switch(this.currency_)
         {
            case Currency.fejubu:
               GA.global().trackEvent("credits",this.converted_?"buyConverted":"buy",this.id_,this.price_);
               break;
            case Currency.FAME:
               GA.global().trackEvent("credits","buyFame",this.id_,this.price_);
               break;
            case Currency.kizuz:
               GA.global().trackEvent("credits","buyGuildFame",this.id_,this.price_);
               break;
         }
         return;
      }
   }

}