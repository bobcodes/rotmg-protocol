package wokobewig
{
   import flash.display.LoaderInfo;
   import kyt.Zurucuvy;
   import kyt.Jenaseben;
   import komawowag.Becepog;


   public class Vevizu extends Object implements Haqy
   {
      public function Vevizu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var info:LoaderInfo;

      public var sug:Zurucuvy;

      public var figefetu:Jenaseben;

      public var qiqely:Becepog;

      public function mabyze() : String {
         return this.info.parameters.kabam_signed_request;
      }

      public function tol() : Object {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var signedRequest:String = null;
         var requestDetails:Array = null;
         var payload:String = null;
         var userSession:Object = null;
         signedRequest=this.mabyze();
         try
         {
            requestDetails=signedRequest.split(".",2);
            if(requestDetails.length!=2)
            {
               throw new Error("Invalid signed request");
            }
            else
            {
               payload=this.qono(requestDetails[1]);
               userSession=this.sug.parse(payload);
            }
         }
         catch(error:Error)
         {
            if(_loc4_)
            {
               if(_loc4_||(_loc1_))
               {
               }
            }
            qiqely.info("Failed to get user session: "+error.toString()+signedRequest);
            if(_loc4_)
            {
               userSession=null;
            }
         }
         return userSession;
      }

      protected function qono(param1:String) : String {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:RegExp = new RegExp("-","g");
         var _loc3_:RegExp = new RegExp("_","g");
         var _loc4_:int = 4-param1.length%4;
         while(_loc4_--)
         {
            param1=param1+"=";
         }
         var param1:String = param1.replace(_loc2_,"+").replace(_loc3_,"/");
         return this.figefetu.decode(param1);
      }
   }

}