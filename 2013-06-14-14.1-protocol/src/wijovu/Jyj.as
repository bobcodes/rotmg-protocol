package wijovu
{
   import flash.display.LoaderInfo;
   import guje.Kehyg;
   import guje.Gucocyda;
   import hunavefeg.Depyrew;


   public class Jyj extends Object implements Fymarafi
   {
      public function Jyj() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var info:LoaderInfo;

      public var tepiseha:Kehyg;

      public var fanyvozy:Gucocyda;

      public var con:Depyrew;

      public function bawyquhi() : String {
         return this.info.parameters.kabam_signed_request;
      }

      public function muzemidyv() : Object {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var signedRequest:String = null;
         var requestDetails:Array = null;
         var payload:String = null;
         var userSession:Object = null;
         signedRequest=this.bawyquhi();
         try
         {
            requestDetails=signedRequest.split(".",2);
            if(requestDetails.length!=2)
            {
               throw new Error("Invalid signed request");
            }
            else
            {
               payload=this.lidog(requestDetails[1]);
               userSession=this.tepiseha.parse(payload);
            }
         }
         catch(error:Error)
         {
            if(!_loc3_)
            {
               if(_loc4_||(_loc3_))
               {
               }
               else
               {
                  con.info("Failed to get user session: "+error.toString()+", signed request: ");
                  if(!(_loc3_&&(_loc1_)))
                  {
                     userSession=null;
                  }
                  return userSession;
               }
            }
            con.info("Failed to get user session: "+error.toString()+signedRequest);
            if(!(_loc3_&&(_loc1_)))
            {
               userSession=null;
            }
         }
         return userSession;
      }

      protected function lidog(param1:String) : String {
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
         return this.fanyvozy.decode(param1);
      }
   }

}