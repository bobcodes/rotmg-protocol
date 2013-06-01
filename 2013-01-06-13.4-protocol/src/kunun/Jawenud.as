package kunun
{
[CLASS652]   import flash.display.LoaderInfo;
   import gamusahan.Lahocuji;
   import gamusahan.Purizujo;
   import bikyvym.Voduzak;


   public class Jawenud extends Object implements Dewa
   {
      public function Jawenud() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var info:LoaderInfo;

      public var pogitapy:Lahocuji;

      public var teb:Purizujo;

      public var wop:Voduzak;

      public function wafemu() : String {
         return this.info.parameters.kabam_signed_request;
      }

      public function zydev() : Object {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var signedRequest:String = null;
         var requestDetails:Array = null;
         var payload:String = null;
         var userSession:Object = null;
         signedRequest=this.wafemu();
         try
         {
            requestDetails=signedRequest.split(".",2);
            if(requestDetails.length!=2)
            {
               throw new Error("Invalid signed request");
            }
            else
            {
               payload=this.nygymi(requestDetails[1]);
               userSession=this.pogitapy.parse(payload);
            }
         }
         catch(error:Error)
         {
            if(!(_loc3_&&(_loc1_)))
            {
               if(_loc4_)
               {
               }
            }
            wop.info("Failed to get user session: "+error.toString()+signedRequest);
            if(_loc4_||(_loc3_))
            {
               userSession=null;
            }
         }
         return userSession;
      }

      protected function nygymi(param1:String) : String {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:RegExp = new RegExp("-","g");
         var _loc3_:RegExp = new RegExp("_","g");
         var _loc4_:int = 4-param1.length%4;
         while(_loc4_--)
         {
            param1=param1+"=";
         }
         var param1:String = param1.replace(_loc2_,"+").replace(_loc3_,"/");
         return this.teb.decode(param1);
      }
   }
[/CLASS]
}